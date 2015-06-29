WickedPdf.config = {
  # Win and Mac paths
  #exe_path: '/usr/local/bin/wkhtmltopdf'
  exe_path: ['C:', 'wkhtmltopdf', 'bin', 'wkhtmltopdf.exe'].join(File::SEPARATOR),
  encoding: 'UTF-8',
  page_size: 'Letter',
  layout: 'layouts/pdf_template.pdf.haml'
}
