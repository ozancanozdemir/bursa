#' @title get_data_from_bursa
#' @description  Given a data name, this function returns the data frame
#' @param data_name A data set name obtained from list_data_names()
#' @return A data frame that shows the observations for given data name
#' @examples
#' #NOT RUN
#'\donttest{
#'# It is just an example.
#' get_data_from_bursa("genclik-tesis")
#'}
#'
#' @export
#' @importFrom utils read.csv
get_data_from_bursa<-function(data_name){
  #requireNamespace(dplyr)
  #requireNamespace(rvest)
  link <-rvest::read_html(gsub(" ","",paste("https://acikyesil.bursa.bel.tr/dataset/",data_name)))
  href_list <-link |> rvest::html_elements("a") |> rvest::html_attr("href")
  if(sum(grepl("json",  href_list))==1){
    data <- dplyr::as_tibble(jsonlite::fromJSON(href_list|>stringr::str_subset("json")))
    #data<-encoding_data(data)
  } else if(sum(grepl("json",  href_list))==1){
    json_file <- jsonlite::fromJSON(href_list[29])
    if(is.data.frame(json_file)){
      data <- dplyr::as_tibble(json_file)
    } else if (is.list(json_file)){
      data <- dplyr::as_tibble(json_file$sonuc)
    }
    data<-encoding_data(data)
  } else if(sum(grepl("CSV",  href_list))==1){
    data <- dplyr::as_tibble(utils::read.csv(href_list|>stringr::str_subset("CSV"),sep = ","))
    data<-encoding_data(data)
  } else if(sum(grepl("csv",  href_list))==1){
    data <- dplyr::as_tibble(utils::read.csv(href_list|>stringr::str_subset("csv"),sep = ","))
    data<-encoding_data(data)
  }  else if(sum(grepl("xlsx",  href_list))==1){
    data <- dplyr::as_tibble(openxlsx::read.xlsx(href_list|>stringr::str_subset(".xlsx")))
    data<-encoding_data(data)
  } else {
    #print(paste("This data cannot be downloaded. Please visit",link))
  }
  return(data)
}


