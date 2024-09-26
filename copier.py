import os
import shutil

def copy_and_change_extension(src_dir, dst_dir, old_ext, new_ext):
    """
    Copie tous les fichiers avec l'extension old_ext du répertoire src_dir
    vers dst_dir, en changeant leur extension en new_ext.

    :param src_dir: Répertoire source pour chercher les fichiers
    :param dst_dir: Répertoire de destination pour copier les fichiers
    :param old_ext: Extension des fichiers à copier (e.g., '.lua')
    :param new_ext: Nouvelle extension pour les fichiers copiés (e.g., '.txt')
    """
    # Crée le répertoire de destination s'il n'existe pas
    if not os.path.exists(dst_dir):
        os.makedirs(dst_dir)

    # Parcourt tous les fichiers et dossiers dans le répertoire source
    for root, dirs, files in os.walk(src_dir):
        for file in files:
            # Vérifie si le fichier a l'extension .lua
            if file.endswith(old_ext):
                # Chemin complet vers le fichier source
                src_file_path = os.path.join(root, file)
                # Change l'extension à .txt
                dst_file_name = os.path.splitext(file)[0] + new_ext
                # Chemin complet vers le fichier de destination
                dst_file_path = os.path.join(dst_dir, dst_file_name)
                # Copie le fichier et change son extension
                shutil.copy(src_file_path, dst_file_path)
                print(f"Copied and converted: {src_file_path} -> {dst_file_path}")

if __name__ == "__main__":
    current_directory = os.getcwd()  # Dossier courant où le script est exécuté
    destination_directory = os.path.join(current_directory, "COPIER")  # Dossier de destination
    copy_and_change_extension(current_directory, destination_directory, '.lua', '.txt')



# Failed (1)
#     ○ LuaSnip  nvim-cmp 
#         git submodule init
#         git submodule update
#         C:/ProgramData/chocolatey/lib/make/tools/install/bin/make.exe "CC=cc" "INCLUDE_DIR=-I'/cygdrive/c/Users/ceift/AppData/Local/nvim-data/lazy/LuaSnip/deps/lua51_include/'" LDLIBS="" -C "deps/jsregexp"
#         make[1]: Entering directory 'C:/Users/ceift/AppData/Local/nvim-data/lazy/LuaSnip/deps/jsregexp'
#         cc INCLUDE_DIR=-I/cygdrive/c/Users/ceift/AppData/Local/nvim-data/lazy/LuaSnip/deps/lua51_include/ LDLIBS=\ -I/usr/include/lua5.1 -O2 -fPIC -c jsregexp.c -o jsregexp.o
#         jsregexp.c:3:10: fatal error: lauxlib.h: No such file or directory
#             3 | #include <lauxlib.h>
#               |          ^~~~~~~~~~~
#         compilation terminated.
#         make[1]: *** [Makefile:20: jsregexp.o] Error 1
#         make[1]: Leaving directory 'C:/Users/ceift/AppData/Local/nvim-data/lazy/LuaSnip/deps/jsregexp'
#         make: *** [Makefile:49: jsregexp] Error 2
