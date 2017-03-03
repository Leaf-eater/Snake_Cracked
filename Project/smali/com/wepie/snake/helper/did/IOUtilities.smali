.class public final Lcom/wepie/snake/helper/did/IOUtilities;
.super Ljava/lang/Object;
.source "IOUtilities.java"


# static fields
.field private static final IO_BUFFER_SIZE:I = 0x1000

.field private static final LOG_TAG:Ljava/lang/String; = "IOUtilities"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanDir(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;Z)V

    .line 244
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 262
    return-void
.end method

.method public static cleanDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 253
    return-void
.end method

.method public static clearFile(Ljava/io/File;)Z
    .locals 8
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 402
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 403
    :cond_0
    const/4 v3, 0x0

    .line 422
    :goto_0
    return v3

    .line 406
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 407
    const/4 v3, 0x1

    goto :goto_0

    .line 410
    :cond_2
    const/4 v3, 0x1

    .line 411
    .local v3, "result":Z
    const/4 v1, 0x0

    .line 413
    .local v1, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    .end local v1    # "out":Ljava/io/OutputStream;
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_1
    const-string v4, ""

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 420
    invoke-static {v2}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 421
    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    const/4 v3, 0x0

    .line 420
    invoke-static {v1}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .line 417
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 420
    invoke-static {v1}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v1}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v4

    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_3

    .line 417
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_2

    .line 415
    .end local v1    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/OutputStream;
    .restart local v1    # "out":Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static closeStream(Landroid/database/Cursor;)V
    .locals 1
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 65
    if-eqz p0, :cond_0

    .line 67
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeStream(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 56
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static closeStream(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "stream"    # Ljava/io/Closeable;

    .prologue
    .line 80
    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/16 v2, 0x1000

    new-array v0, v2, [B

    .line 48
    .local v0, "b":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "read":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 49
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public static copyDirectory(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 209
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 210
    .local v1, "files":[Ljava/io/File;
    if-nez v1, :cond_1

    .line 222
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    return-void

    .line 213
    .restart local v1    # "files":[Ljava/io/File;
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 214
    aget-object v0, v1, v2

    .line 215
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/wepie/snake/helper/did/IOUtilities;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 213
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    :cond_2
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v3}, Lcom/wepie/snake/helper/did/IOUtilities;->copyFile(Ljava/io/File;Ljava/io/File;)V

    goto :goto_1
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 7
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 124
    .local v1, "channel1":Ljava/nio/channels/FileChannel;
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 125
    .local v6, "channel2":Ljava/nio/channels/FileChannel;
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 127
    .end local v1    # "channel1":Ljava/nio/channels/FileChannel;
    .end local v6    # "channel2":Ljava/nio/channels/FileChannel;
    :cond_0
    return-void
.end method

.method public static deleteDir(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;Z)V

    .line 274
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FileFilter;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 282
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 283
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Ljava/io/FilenameFilter;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 291
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 292
    return-void
.end method

.method public static deleteDir(Ljava/io/File;Z)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "removeDir"    # Z

    .prologue
    .line 301
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 303
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 304
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 305
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 306
    invoke-static {v0, p1}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;Z)V

    .line 304
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 312
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 316
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "removeDir"    # Z
    .param p2, "filter"    # Ljava/io/FileFilter;

    .prologue
    .line 325
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 327
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 328
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 329
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 330
    invoke-static {v0, p1, p2}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;ZLjava/io/FileFilter;)V

    .line 328
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 336
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    .line 337
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 340
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V
    .locals 5
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "removeDir"    # Z
    .param p2, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 349
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 350
    invoke-virtual {p0, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 351
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_1

    .line 352
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 353
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 354
    invoke-static {v0, p1, p2}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;ZLjava/io/FilenameFilter;)V

    .line 352
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 360
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    if-eqz p1, :cond_2

    .line 361
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 364
    .end local v1    # "files":[Ljava/io/File;
    :cond_2
    return-void
.end method

.method public static deleteDir(Ljava/lang/String;)V
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 265
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;)V

    .line 266
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 166
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteFile(Ljava/io/File;Z)V

    .line 167
    return-void
.end method

.method public static deleteFile(Ljava/io/File;Z)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;
    .param p1, "waitUntilDone"    # Z

    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v3

    .line 139
    .local v3, "success":Z
    if-nez v3, :cond_0

    .line 141
    const/4 v4, 0x3

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "rm"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-rf"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    .line 144
    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 146
    .local v0, "args":[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 147
    .local v2, "proc":Ljava/lang/Process;
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    .end local v0    # "args":[Ljava/lang/String;
    .end local v2    # "proc":Ljava/lang/Process;
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;)V

    .line 190
    return-void
.end method

.method public static deleteFile(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "waitUntilDone"    # Z

    .prologue
    .line 178
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/wepie/snake/helper/did/IOUtilities;->deleteDir(Ljava/io/File;Z)V

    .line 179
    return-void
.end method

.method public static ensureDir(Ljava/io/File;)Z
    .locals 2
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "result":Z
    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    const/4 v0, 0x1

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 200
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    goto :goto_0
.end method

.method public static ensureMkdir(Ljava/io/File;)Z
    .locals 5
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 367
    if-nez p0, :cond_0

    .line 368
    const/4 v2, 0x0

    .line 377
    :goto_0
    return v2

    .line 371
    :cond_0
    move-object v1, p0

    .line 372
    .local v1, "tempDir":Ljava/io/File;
    const/4 v0, 0x1

    .line 373
    .local v0, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    new-instance v1, Ljava/io/File;

    .end local v1    # "tempDir":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .restart local v1    # "tempDir":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 377
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    goto :goto_0
.end method

.method public static loadBytes(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 227
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x1000

    :try_start_0
    new-array v2, v3, [B

    .line 229
    .local v2, "tmp":[B
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "l":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 230
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 233
    .end local v1    # "l":I
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    invoke-static {p0}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v3

    .restart local v1    # "l":I
    .restart local v2    # "tmp":[B
    :cond_0
    invoke-static {p0}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 235
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 89
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 90
    .local v2, "reader":Ljava/io/Reader;
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    invoke-direct {v0, v5}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 92
    .local v0, "buffer":Lorg/apache/http/util/CharArrayBuffer;
    const/16 v5, 0x1000

    :try_start_0
    new-array v4, v5, [C

    .line 94
    .local v4, "tmp":[C
    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/Reader;->read([C)I

    move-result v1

    .local v1, "l":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 95
    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, v1}, Lorg/apache/http/util/CharArrayBuffer;->append([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 98
    .end local v1    # "l":I
    .end local v4    # "tmp":[C
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v5

    .restart local v1    # "l":I
    .restart local v4    # "tmp":[C
    :cond_0
    invoke-static {v2}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 100
    const/4 v3, 0x0

    .line 101
    .local v3, "start":I
    const-string v5, "utf-8"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 102
    invoke-virtual {v0, v6}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    const v6, 0xfeff

    if-ne v5, v6, :cond_1

    .line 104
    const/4 v3, 0x1

    .line 107
    :cond_1
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    invoke-virtual {v0, v3, v5}, Lorg/apache/http/util/CharArrayBuffer;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static loadFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 426
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    const-string v1, ""

    .line 433
    :goto_0
    return-object v1

    .line 430
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/wepie/snake/helper/did/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static newUtf8OrDefaultInputStreamReader(Ljava/io/InputStream;)Ljava/io/InputStreamReader;
    .locals 3
    .param p0, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 462
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static newUtf8OrDefaultOutputStreamWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;
    .locals 3
    .param p0, "stream"    # Ljava/io/OutputStream;

    .prologue
    .line 470
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :goto_0
    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method public static readBundleFromStream(Ljava/io/InputStream;)Landroid/os/Bundle;
    .locals 6
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 445
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 446
    .local v2, "out":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v2}, Lcom/wepie/snake/helper/did/IOUtilities;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 449
    .local v3, "parcel":Landroid/os/Parcel;
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 450
    .local v1, "data":[B
    array-length v4, v1

    invoke-virtual {v3, v1, v5, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 451
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 453
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 454
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 455
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 457
    return-object v0
.end method

.method public static readFileText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x0

    .line 383
    .local v0, "stream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_1
    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lcom/wepie/snake/helper/did/IOUtilities;->loadContent(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 388
    invoke-static {v1}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 390
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return-object v2

    .line 385
    :catch_0
    move-exception v2

    .line 388
    :goto_1
    invoke-static {v0}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 390
    :goto_2
    const/4 v2, 0x0

    goto :goto_0

    .line 386
    :catch_1
    move-exception v2

    .line 388
    :goto_3
    invoke-static {v0}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_4
    invoke-static {v0}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    goto :goto_4

    .line 386
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 385
    .end local v0    # "stream":Ljava/io/FileInputStream;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "stream":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static saveToFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "writer":Ljava/io/OutputStreamWriter;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .local v1, "writer":Ljava/io/OutputStreamWriter;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 117
    invoke-static {v1}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    .line 119
    return-void

    .line 117
    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/wepie/snake/helper/did/IOUtilities;->closeStream(Ljava/io/Closeable;)V

    throw v2

    .end local v0    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v1    # "writer":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "writer":Ljava/io/OutputStreamWriter;
    .restart local v0    # "writer":Ljava/io/OutputStreamWriter;
    goto :goto_0
.end method

.method public static writeBundleToStream(Landroid/os/Bundle;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "data"    # Landroid/os/Bundle;
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 440
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    return-void
.end method
