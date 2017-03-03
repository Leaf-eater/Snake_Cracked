.class public Lcom/wepie/snake/module/game/food/FoodInfo;
.super Ljava/lang/Object;
.source "FoodInfo.java"


# static fields
.field public static final STATUS_ANIMING:I = 0x2

.field public static final STATUS_DIE:I = 0x3

.field public static final STATUS_NORMAL:I = 0x1

.field public static final TYPE_DROP:I = 0x3

.field public static final TYPE_FOOD:I = 0x1

.field public static final TYPE_WRECK:I = 0x2

.field private static final speed:F


# instance fields
.field public anim_frame_count:I

.field private curStep:I

.field public endX:F

.field public endY:F

.field private startX:F

.field private startY:F

.field public status:I

.field private stepx:F

.field private stepy:F

.field public textureId:I

.field public type:I

.field public x:F

.field public y:F

.field public zorder:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget v0, Lcom/wepie/snake/module/game/food/Food;->ur:F

    sput v0, Lcom/wepie/snake/module/game/food/FoodInfo;->speed:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->anim_frame_count:I

    .line 30
    iput v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->type:I

    .line 36
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 23
    const/16 v0, 0xa

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->anim_frame_count:I

    .line 30
    iput v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->type:I

    .line 39
    iput p1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 40
    iput p2, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 41
    return-void
.end method


# virtual methods
.method public getAnimX()F
    .locals 3

    .prologue
    .line 66
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->curStep:I

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->anim_frame_count:I

    if-le v0, v1, :cond_0

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 68
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_0
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->curStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->curStep:I

    .line 71
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->startX:F

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->curStep:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->stepx:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 72
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    goto :goto_0
.end method

.method public getAnimY()F
    .locals 3

    .prologue
    .line 76
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->startY:F

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->curStep:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->stepy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 77
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    return v0
.end method

.method public isAniming()Z
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDie()Z
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNormal()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 55
    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEndXY(FF)V
    .locals 2
    .param p1, "ex"    # F
    .param p2, "ey"    # F

    .prologue
    .line 44
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->startX:F

    .line 45
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->startY:F

    .line 46
    iput p1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->endX:F

    .line 47
    iput p2, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->endY:F

    .line 49
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->endX:F

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->startX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->anim_frame_count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->stepx:F

    .line 50
    iget v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->endY:F

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->startY:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->anim_frame_count:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->stepy:F

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/food/FoodInfo;->curStep:I

    .line 52
    return-void
.end method
