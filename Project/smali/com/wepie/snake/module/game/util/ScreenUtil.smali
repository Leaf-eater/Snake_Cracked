.class public Lcom/wepie/snake/module/game/util/ScreenUtil;
.super Ljava/lang/Object;
.source "ScreenUtil.java"


# static fields
.field private static scale:F

.field private static screenHeight:I

.field private static screenWidth:I

.field private static statusBarHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/wepie/snake/module/game/util/ScreenUtil;->scale:F

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(F)I
    .locals 2
    .param p0, "dpValue"    # F

    .prologue
    .line 27
    sget v0, Lcom/wepie/snake/module/game/util/ScreenUtil;->scale:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static getScreenHeight()I
    .locals 4

    .prologue
    .line 41
    sget v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenHeight:I

    if-eqz v2, :cond_0

    sget v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenHeight:I

    .line 47
    .local v0, "display":Landroid/view/Display;
    .local v1, "size":Landroid/graphics/Point;
    :goto_0
    return v2

    .line 43
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/wepie/snake/base/SkApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 44
    .restart local v0    # "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 45
    .restart local v1    # "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 46
    iget v2, v1, Landroid/graphics/Point;->y:I

    sput v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenHeight:I

    .line 47
    sget v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenHeight:I

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 4

    .prologue
    .line 31
    sget v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenWidth:I

    if-eqz v2, :cond_0

    sget v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenWidth:I

    .line 37
    .local v0, "display":Landroid/view/Display;
    .local v1, "size":Landroid/graphics/Point;
    :goto_0
    return v2

    .line 33
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    :cond_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/wepie/snake/base/SkApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 34
    .restart local v0    # "display":Landroid/view/Display;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 35
    .restart local v1    # "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 36
    iget v2, v1, Landroid/graphics/Point;->x:I

    sput v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenWidth:I

    .line 37
    sget v2, Lcom/wepie/snake/module/game/util/ScreenUtil;->screenWidth:I

    goto :goto_0
.end method

.method public static getStatusBarHeight()I
    .locals 6

    .prologue
    .line 51
    sget v5, Lcom/wepie/snake/module/game/util/ScreenUtil;->statusBarHeight:I

    if-eqz v5, :cond_0

    sget v5, Lcom/wepie/snake/module/game/util/ScreenUtil;->statusBarHeight:I

    .line 65
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "field":Ljava/lang/reflect/Field;
    :goto_0
    return v5

    .line 53
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    const/4 v0, 0x0

    .line 54
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 55
    .local v3, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 57
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 59
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 61
    .local v4, "x":I
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wepie/snake/base/SkApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sput v5, Lcom/wepie/snake/module/game/util/ScreenUtil;->statusBarHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_1
    sget v5, Lcom/wepie/snake/module/game/util/ScreenUtil;->statusBarHeight:I

    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e1":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
