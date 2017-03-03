.class public Lcom/wepie/snake/module/game/RouletteView;
.super Landroid/view/View;
.source "RouletteView.java"


# static fields
.field public static BoderW:I

.field public static h:I

.field public static ri:I

.field public static ro:I

.field public static w:I

.field public static xo:I

.field public static yo:I


# instance fields
.field public leftMargin:I

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private xi:F

.field private yi:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x42200000    # 40.0f

    .line 20
    invoke-static {v1}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    .line 21
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->ri:I

    .line 22
    invoke-static {v1}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    .line 24
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->w:I

    .line 25
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->h:I

    .line 27
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    add-int/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->xo:I

    .line 28
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    add-int/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/RouletteView;->yo:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 30
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->xo:I

    int-to-float v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->xi:F

    .line 31
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->yo:I

    int-to-float v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->yi:F

    .line 33
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->leftMargin:I

    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/RouletteView;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/wepie/snake/module/game/RouletteView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->xo:I

    int-to-float v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->xi:F

    .line 31
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->yo:I

    int-to-float v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->yi:F

    .line 33
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->leftMargin:I

    .line 43
    iput-object p1, p0, Lcom/wepie/snake/module/game/RouletteView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/wepie/snake/module/game/RouletteView;->init()V

    .line 45
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/RouletteView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/wepie/snake/module/game/RouletteView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method public getCenterX()I
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/wepie/snake/module/game/RouletteView;->leftMargin:I

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getCenterY()I
    .locals 2

    .prologue
    .line 57
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->BoderW:I

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 63
    iget-object v0, p0, Lcom/wepie/snake/module/game/RouletteView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#7f000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->xo:I

    int-to-float v0, v0

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->yo:I

    int-to-float v1, v1

    sget v2, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wepie/snake/module/game/RouletteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v0, p0, Lcom/wepie/snake/module/game/RouletteView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#b3d4d4d4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget v0, p0, Lcom/wepie/snake/module/game/RouletteView;->xi:F

    iget v1, p0, Lcom/wepie/snake/module/game/RouletteView;->yi:F

    sget v2, Lcom/wepie/snake/module/game/RouletteView;->ri:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/wepie/snake/module/game/RouletteView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 68
    return-void
.end method

.method public refresh(FF)V
    .locals 6
    .param p1, "dis"    # F
    .param p2, "radians"    # F

    .prologue
    .line 71
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ri:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 72
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->ro:I

    sget v1, Lcom/wepie/snake/module/game/RouletteView;->ri:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0xa

    int-to-float p1, v0

    .line 75
    :cond_0
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->xo:I

    int-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->xi:F

    .line 76
    sget v0, Lcom/wepie/snake/module/game/RouletteView;->yo:I

    int-to-double v0, v0

    float-to-double v2, p1

    float-to-double v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/wepie/snake/module/game/RouletteView;->yi:F

    .line 77
    invoke-virtual {p0}, Lcom/wepie/snake/module/game/RouletteView;->invalidate()V

    .line 78
    return-void
.end method
