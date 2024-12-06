#!/bin/bash

home_dir="${HOME}"
dotfiles_dir="${home_dir}/dotfiles"
backup_dir="${dotfiles_dir}/_bk"

execute () {
  if [ -e "${backup_dir}" ]; then
    rm -rf "${backup_dir}"/*
  else
    mkdir -p "${backup_dir}"
  fi

  for dotfile in ${dotfiles_dir}/.??*; do
    local dotfile_name="$(basename ${dotfile})"
    if [ "${dotfile_name}" == .git ] || [ "${dotfile_name}" == ".gitignore" ] || [ "${dotfile_name}" == ".DS_Store" ] || [[ "${dotfile_name}" =~ "_bk" ]]; then
      continue
    fi

    local old_dotfile="${home_dir}/${dotfile_name}"
    if [ -e "${old_dotfiles}" ] && [ ! -L "$old_dotfile" ]; then
      echo "create backup: ${old_dotfile}"
      mv -f "${old_dotfile}" "${backup_dir}/${dotfile_name}"
    fi
    if [ ! -e "${old_dotfile}" ]; then
      ln -nfs "${dotfile}" "${home_dir}/${dotfile_name}"
      echo "create link ${dotfile_name}"
    fi
  done
}

execute
