.class public Lcom/wepie/snake/module/game/util/CoordUtil;
.super Ljava/lang/Object;
.source "CoordUtil.java"


# static fields
.field private static final SH:I

.field private static final SW:I

.field public static camera_left:F

.field public static camera_top:F

.field public static rate:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenWidth()I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/util/CoordUtil;->SW:I

    .line 12
    invoke-static {}, Lcom/wepie/snake/module/game/util/ScreenUtil;->getScreenHeight()I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/util/CoordUtil;->SH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVectorRadians(FFFF)F
    .locals 8
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 29
    mul-float v5, p0, p2

    mul-float v6, p1, p3

    add-float v1, v5, v6

    .line 30
    .local v1, "dotProduct":F
    mul-float v5, p0, p0

    mul-float v6, p1, p1

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 31
    .local v3, "s1":F
    mul-float v5, p2, p2

    mul-float v6, p3, p3

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 32
    .local v4, "s2":F
    mul-float v5, v3, v4

    div-float v0, v1, v5

    .line 33
    .local v0, "cosa":F
    float-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 34
    .local v2, "radians":F
    return v2
.end method

.method public static screenSize2GLSize(F)F
    .locals 2
    .param p0, "screenSize"    # F

    .prologue
    .line 25
    sget v0, Lcom/wepie/snake/module/game/util/CoordUtil;->SW:I

    int-to-float v0, v0

    div-float v0, p0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public static screenX2GLX(F)F
    .locals 4
    .param p0, "sx"    # F

    .prologue
    .line 15
    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->SW:I

    int-to-float v1, v1

    div-float v0, p0, v1

    .line 16
    .local v0, "rx":F
    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    neg-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    sget v3, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    return v1
.end method

.method public static screenY2GLY(F)F
    .locals 4
    .param p0, "sy"    # F

    .prologue
    .line 20
    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->SH:I

    int-to-float v1, v1

    div-float v0, p0, v1

    .line 21
    .local v0, "ry":F
    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v0

    sget v3, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    return v1
.end method
