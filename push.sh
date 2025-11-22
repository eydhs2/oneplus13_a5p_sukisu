git add .
git commit -m "Futaba"
git push
diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
@@ -1825,7 +1825,8 @@
-                vma = find_vma(mm, start_vaddr);
-                if (vma && vma->vm_file) {
-                        struct inode *inode = file_inode(vma->vm_file);
+                struct vm_area_struct *vma = find_vma(mm, start_vaddr);
+                if (vma && vma->vm_file) {
+                        struct inode *inode = file_inode(vma->vm_file);
