# XeLaTeX is required for XePersian.
$pdflatex = 'xelatex -halt-on-error -interaction nonstopmode %O %S';

# If you're on Windows, then change then set $aux_dir to another
# value, as Windows does not allow a directory to be called 'aux'.
$aux_dir = 'aux';
$out_dir = 'build';

# Used for creating a glossary.
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
  system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}
