.class public Lcom/wepie/snake/module/plugin/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# static fields
.field public static final QQ_ID:Ljava/lang/String; = "1105424927"

.field public static final QQ_KEY:Ljava/lang/String; = "rUswaU0FJZPnmB4o"

.field private static final SHARE_PIC_NAME:Ljava/lang/String; = "share.jpg"

.field public static final SINA_ID:Ljava/lang/String; = "3601510912"

.field public static final SINA_KEY:Ljava/lang/String; = "634fdf771a921bf6d5da26b8d3fe7b97"

.field private static final TAG:Ljava/lang/String;

.field public static final WECHAT_ID:Ljava/lang/String; = "wx9e4ce7f566e4b2ff"

.field public static final WECHAT_KEY:Ljava/lang/String; = "be65b9ef9271e927d643b29a8b4812be"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/wepie/snake/module/plugin/ShareUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/wepie/snake/module/plugin/ShareUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTencent()Lcom/tencent/tauth/Tencent;
    .locals 3

    .prologue
    .line 45
    const-string v1, "1105424927"

    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    .line 46
    .local v0, "sTencent":Lcom/tencent/tauth/Tencent;
    return-object v0
.end method

.method private static makeBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "param"    # I

    .prologue
    const/4 v9, 0x0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0200de

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 132
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 134
    .local v4, "paint":Landroid/graphics/Paint;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 135
    .local v2, "icon":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 136
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-direct {v5, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 137
    .local v5, "src":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v3, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 138
    .local v3, "osrc":Landroid/graphics/Rect;
    const/4 v6, 0x0

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v0, v6, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 139
    const-string v6, "#ff5758"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 140
    const/high16 v6, 0x42480000    # 50.0f

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 141
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v8

    mul-int/lit16 v8, v8, 0x1e0

    div-int/lit16 v8, v8, 0x536

    int-to-float v8, v8

    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 143
    const/16 v6, 0x1f

    invoke-virtual {v1, v6}, Landroid/graphics/Canvas;->save(I)I

    .line 144
    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 145
    sget-object v6, Lcom/wepie/snake/module/plugin/ShareUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeImg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v6, Lcom/wepie/snake/module/plugin/ShareUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "makeImg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v8

    div-int/lit16 v8, v8, 0x400

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "k"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-object v2
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "bm"    # Landroid/graphics/Bitmap;
    .param p1, "picName"    # Ljava/lang/String;

    .prologue
    .line 152
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/wepie/snake/helper/did/FileConfig;->IMG_BASE_FOLDER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 155
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 156
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 159
    :cond_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 160
    .local v2, "out":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x5a

    invoke-virtual {p0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 161
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 162
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 163
    sget-object v4, Lcom/wepie/snake/module/plugin/ShareUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u4fdd\u5b58\u6210\u529f\uff1apath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 170
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "path":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 170
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    const-string v4, ""

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static share2WX(Landroid/content/Context;ZLcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCircle"    # Z
    .param p2, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 50
    new-instance v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;-><init>()V

    .line 51
    .local v0, "shareInfo":Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;
    const-string v1, "wx9e4ce7f566e4b2ff"

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->wechat_id:Ljava/lang/String;

    .line 52
    iput-boolean p1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->isCircle:Z

    .line 54
    if-eqz p2, :cond_0

    .line 55
    iget-object v1, p2, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_link:Ljava/lang/String;

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    .line 60
    :goto_0
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->title:Ljava/lang/String;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->desc:Ljava/lang/String;

    .line 62
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 63
    const v1, 0x7f02011e

    iput v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->default_bitmap_res_id:I

    .line 65
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->share2WX(Landroid/content/Context;Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;)V

    .line 66
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static shareScore2WX(Landroid/content/Context;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isCircle"    # Z
    .param p2, "score"    # I
    .param p3, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 69
    new-instance v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;-><init>()V

    .line 70
    .local v0, "shareInfo":Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;
    const-string v1, "wx9e4ce7f566e4b2ff"

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->wechat_id:Ljava/lang/String;

    .line 71
    iput-boolean p1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->isCircle:Z

    .line 73
    if-eqz p3, :cond_0

    .line 74
    iget-object v1, p3, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_link:Ljava/lang/String;

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    .line 79
    :goto_0
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->title:Ljava/lang/String;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->desc:Ljava/lang/String;

    .line 81
    invoke-static {p0, p2}, Lcom/wepie/snake/module/plugin/ShareUtil;->makeBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 83
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->share2WX(Landroid/content/Context;Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;)V

    .line 84
    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/wepie/snake/module/plugin/share/wx/WXShareInfo;->url:Ljava/lang/String;

    goto :goto_0
.end method

.method public static shareScoreToWeibo(Landroid/app/Activity;ILcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "score"    # I
    .param p2, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 92
    if-eqz p2, :cond_0

    iget-object v0, p2, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_link:Ljava/lang/String;

    .line 93
    .local v0, "share_url":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v1

    invoke-static {p0, p1}, Lcom/wepie/snake/module/plugin/ShareUtil;->makeBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->startSinaShareActivity(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 94
    return-void

    .line 92
    .end local v0    # "share_url":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static shareToQQ(Landroid/app/Activity;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 7
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "isQzone"    # Z
    .param p2, "score"    # I
    .param p3, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 99
    if-ltz p2, :cond_0

    .line 100
    invoke-static {p0, p2}, Lcom/wepie/snake/module/plugin/ShareUtil;->makeBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    const-string v4, "share.jpg"

    invoke-static {v0, v4}, Lcom/wepie/snake/module/plugin/ShareUtil;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "path":Ljava/lang/String;
    new-instance v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;

    invoke-direct {v3}, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;-><init>()V

    .line 107
    .local v3, "shareInfo":Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;
    const-string v4, "1105424927"

    iput-object v4, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->qq_id:Ljava/lang/String;

    .line 108
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->title:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareDesc()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->summary:Ljava/lang/String;

    .line 111
    if-eqz p3, :cond_1

    .line 112
    iget-object v4, p3, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_link:Ljava/lang/String;

    iput-object v4, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->link_url:Ljava/lang/String;

    .line 117
    :goto_1
    if-eqz p1, :cond_2

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "imageArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iput-object v1, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->imageArray:Ljava/util/ArrayList;

    .line 121
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/wepie/snake/module/plugin/PluginManager;->share2Qzone(Landroid/app/Activity;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V

    .line 128
    .end local v1    # "imageArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 102
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "shareInfo":Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02011e

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 114
    .restart local v2    # "path":Ljava/lang/String;
    .restart local v3    # "shareInfo":Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;
    :cond_1
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wepie/snake/helper/config/ConfigManager;->getShareUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->link_url:Ljava/lang/String;

    goto :goto_1

    .line 124
    :cond_2
    iput-object v2, v3, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->icon_url:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v4

    invoke-virtual {v4, p0, v3}, Lcom/wepie/snake/module/plugin/PluginManager;->share2QQ(Landroid/app/Activity;Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;)V

    goto :goto_2
.end method

.method public static shareToWebo(Landroid/app/Activity;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_link:Ljava/lang/String;

    .line 88
    .local v0, "share_url":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/wepie/snake/module/plugin/PluginManager;->getInstance()Lcom/wepie/snake/module/plugin/PluginManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/wepie/snake/module/plugin/PluginManager;->startSinaShareActivity(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 89
    return-void

    .line 87
    .end local v0    # "share_url":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
