type page = {
  string path,
  string content,
  int counter
}

database myapp {
  page /page[{path}]
}

module Model {

  function get_content(path) {
      /myapp/page[{~path}]/counter++;
      /myapp/page[{~path}]/content
  }

  function set_content(path, content) {
      /myapp/page[{~path}]/content <- content
  }

  function statistics() {
    DbSet.iterator(/myapp/page)
  }

}
