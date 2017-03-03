.class public Lcom/wepie/snake/helper/clip/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static MAX_HEIGHT:I

.field private static MAX_WIDTH:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x7d0

    .line 16
    const-class v0, Lcom/wepie/snake/helper/clip/BitmapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/helper/clip/BitmapUtil;->TAG:Ljava/lang/String;

    .line 17
    sput v1, Lcom/wepie/snake/helper/clip/BitmapUtil;->MAX_WIDTH:I

    .line 18
    sput v1, Lcom/wepie/snake/helper/clip/BitmapUtil;->MAX_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustOptions(Landroid/graphics/BitmapFactory$Options;)V
    .locals 7
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v6, -0x1

    .line 29
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 30
    .local v4, "width":I
    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 31
    .local v0, "height":I
    sget v5, Lcom/wepie/snake/helper/clip/BitmapUtil;->MAX_WIDTH:I

    if-gt v4, v5, :cond_0

    sget v5, Lcom/wepie/snake/helper/clip/BitmapUtil;->MAX_HEIGHT:I

    if-le v0, v5, :cond_3

    .line 32
    :cond_0
    const/4 v3, 0x1

    .line 33
    .local v3, "scale":I
    move v2, v4

    .line 34
    .local v2, "outWidth":I
    move v1, v0

    .line 35
    .local v1, "outHeight":I
    :goto_0
    sget v5, Lcom/wepie/snake/helper/clip/BitmapUtil;->MAX_WIDTH:I

    if-gt v2, v5, :cond_1

    sget v5, Lcom/wepie/snake/helper/clip/BitmapUtil;->MAX_HEIGHT:I

    if-le v1, v5, :cond_2

    .line 36
    :cond_1
    mul-int/lit8 v3, v3, 0x2

    .line 37
    div-int/lit8 v2, v2, 0x2

    .line 38
    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 40
    :cond_2
    iput v3, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 42
    .end local v1    # "outHeight":I
    .end local v2    # "outWidth":I
    .end local v3    # "scale":I
    :cond_3
    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eq v6, v5, :cond_4

    iget v5, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ne v6, v5, :cond_5

    .line 43
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 47
    :goto_1
    return-void

    .line 45
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    goto :goto_1
.end method

.method public static compressBmpToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 8
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/16 v7, 0x64

    const/4 v4, 0x0

    .line 59
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v4

    .line 61
    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x64

    .line 63
    .local v3, "quality":I
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p0, v5, v6, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 64
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    div-int/lit16 v5, v5, 0x400

    if-le v5, v7, :cond_2

    const/16 v5, 0x14

    if-le v3, v5, :cond_2

    .line 65
    add-int/lit8 v3, v3, -0xa

    .line 66
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 67
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v5, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "quality":I
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wepie/snake/helper/clip/FileUtil;->safeDeleteFile(Ljava/lang/String;)Z

    .line 84
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 71
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "quality":I
    :cond_2
    :try_start_1
    sget-object v5, Lcom/wepie/snake/helper/clip/BitmapUtil;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------->BitmapUtil compressBmpToFile quality="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bitmap size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "k"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 72
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 71
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 75
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 76
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 77
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 79
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 80
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method public static compressBmpToFile(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "quality"    # I

    .prologue
    .line 51
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v1, p2, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    const/4 v1, 0x1

    .line 54
    :goto_0
    return v1

    .line 53
    :catch_0
    move-exception v0

    .line 54
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static decodeBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 22
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 23
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 24
    invoke-static {v0}, Lcom/wepie/snake/helper/clip/BitmapUtil;->adjustOptions(Landroid/graphics/BitmapFactory$Options;)V

    .line 25
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getEmptyBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 179
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "degree":I
    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 93
    .local v2, "exifInterface":Landroid/media/ExifInterface;
    const-string v4, "Orientation"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 94
    .local v3, "orientation":I
    packed-switch v3, :pswitch_data_0

    .line 108
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :goto_0
    :pswitch_0
    return v0

    .line 96
    .restart local v2    # "exifInterface":Landroid/media/ExifInterface;
    .restart local v3    # "orientation":I
    :pswitch_1
    const/16 v0, 0x5a

    .line 97
    goto :goto_0

    .line 99
    :pswitch_2
    const/16 v0, 0xb4

    .line 100
    goto :goto_0

    .line 102
    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    .line 105
    .end local v2    # "exifInterface":Landroid/media/ExifInterface;
    .end local v3    # "orientation":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static rotateBitmapIfNeed(Ljava/lang/String;I)Z
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "orientation"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 112
    if-nez p1, :cond_0

    move v1, v10

    .line 136
    :goto_0
    return v1

    .line 116
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 117
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v1, p1

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "temp":Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 122
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 124
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    move v1, v10

    goto :goto_0

    .line 127
    :catch_0
    move-exception v9

    .line 135
    .local v9, "err":Ljava/lang/OutOfMemoryError;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    move v1, v11

    goto :goto_0

    .line 130
    .end local v9    # "err":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v8

    .line 131
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    move v1, v11

    goto :goto_0

    .line 135
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 136
    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    throw v1
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/16 v5, 0x3c

    .line 149
    :try_start_0
    invoke-static {p1}, Lcom/wepie/snake/helper/clip/FileUtil;->safeDeleteFile(Ljava/io/File;)V

    .line 150
    invoke-static {p1}, Lcom/wepie/snake/helper/clip/FileUtil;->createFile(Ljava/io/File;)V

    .line 151
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    div-int/lit16 v3, v3, 0x400

    if-ge v3, v5, :cond_0

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 155
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x46

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 156
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    div-int/lit16 v3, v3, 0x400

    if-ge v3, v5, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 158
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x50

    invoke-virtual {p0, v3, v4, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 161
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 163
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 164
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 165
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 166
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    const/4 v3, 0x1

    .line 172
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v3

    .line 169
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {p1}, Lcom/wepie/snake/helper/clip/FileUtil;->safeDeleteFile(Ljava/io/File;)V

    .line 172
    const/4 v3, 0x0

    goto :goto_0
.end method
