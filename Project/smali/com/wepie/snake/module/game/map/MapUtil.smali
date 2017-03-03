.class public Lcom/wepie/snake/module/game/map/MapUtil;
.super Ljava/lang/Object;
.source "MapUtil.java"


# static fields
.field public static bh:I

.field public static bw:I

.field private static h:F

.field private static w:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 19
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    .line 20
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    .line 21
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/wepie/snake/module/game/map/MapUtil;->bw:I

    .line 22
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/wepie/snake/module/game/map/MapUtil;->bh:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static draw5(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v11, 0x40800000    # 4.0f

    const/high16 v10, 0x40200000    # 2.5f

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v1, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 68
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v3, v0, v8

    move-object v0, p0

    move v2, v1

    move v4, v1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v3, v0, v8

    sget v5, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    sget v6, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    move-object v2, p0

    move v4, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    sget v3, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    sget v4, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v5, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v8

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 71
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v3, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v8

    move-object v2, p0

    move v5, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v3, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v8

    sget v5, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v9

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 73
    sget v3, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v9

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v5, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v11

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 74
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    div-float v3, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v11

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v11

    move-object v2, p0

    move v5, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    sget v3, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v9

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v9

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 77
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v9

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v10

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v11

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v10

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v11

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v9

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v11

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 80
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v9

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v10

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v8

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 81
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v10

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v9

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v6, v0, v8

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v10

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    mul-float v4, v0, v8

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v8

    sget v6, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 84
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v8

    sget v4, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v10

    move-object v2, p0

    move v6, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v3, v0, v10

    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v5, v0, v9

    move-object v2, p0

    move v4, v1

    move v6, v1

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 86
    sget v0, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    mul-float v1, v0, v8

    sget v2, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    sget v3, Lcom/wepie/snake/module/game/map/MapUtil;->w:F

    sget v4, Lcom/wepie/snake/module/game/map/MapUtil;->h:F

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 87
    return-void
.end method

.method public static getMapBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 25
    sget v3, Lcom/wepie/snake/module/game/map/MapUtil;->bw:I

    sget v4, Lcom/wepie/snake/module/game/map/MapUtil;->bh:I

    add-int/lit8 v4, v4, 0x1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 26
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 27
    .local v1, "canvas":Landroid/graphics/Canvas;
    const-string v3, "#997799"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 28
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 29
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    const-string v3, "#ffffff"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    invoke-static {v1, v2}, Lcom/wepie/snake/module/game/map/MapUtil;->draw5(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 36
    return-object v0
.end method

.method public static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 6
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 41
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 44
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 46
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 47
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 48
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    div-int/lit16 v4, v4, 0x400

    const/16 v5, 0xc8

    if-le v4, v5, :cond_1

    .line 49
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 50
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v4, v5, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 53
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 54
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 55
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 56
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 57
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 58
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    const/4 v4, 0x1

    .line 64
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v4, 0x0

    goto :goto_0
.end method
