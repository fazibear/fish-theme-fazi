function fish_title
  set -l pwd (echo $PWD | sed -e "s|^$HOME|~|")

  if test $_ = 'fish'
    echo "$pwd"
  else
    echo "$pwd ➜ $_"
  end
end
