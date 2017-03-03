.class public Lcom/wepie/snake/module/game/skin/SkinInfo;
.super Ljava/lang/Object;
.source "SkinInfo.java"


# static fields
.field public static final RENDER_TAG_DEFAULT:F = 0.0f

.field public static final RENDER_TAG_FILTER:F = 1.0f

.field public static final Z_ORDER_BODY0:I = 0x4

.field public static final Z_ORDER_BODY1:I = 0x5

.field public static final Z_ORDER_BODY2:I = 0x6

.field public static final Z_ORDER_BODY3:I = 0x7

.field public static final Z_ORDER_BODY4:I = 0x8

.field public static final Z_ORDER_BODY5:I = 0x9

.field public static final Z_ORDER_BODY6:I = 0xa

.field public static final Z_ORDER_HEAD:I = 0x2

.field public static final Z_ORDER_NAME:I = 0x1

.field public static final Z_ORDER_TAIL:I = 0x3

.field public static bodyZIndexArray:[I


# instance fields
.field public bodyTypeCount:I

.field public body_ids:[I

.field public drop_id:I

.field public headOffset:F

.field public headRateH:F

.field public headRateW:F

.field public head_id:I

.field public render_tag:F

.field public skin_id:I

.field public tailRateH:F

.field public tailRateW:F

.field public tail_id:I

.field public wreck_ids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/wepie/snake/module/game/skin/SkinInfo;->bodyZIndexArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>(II[II[I)V
    .locals 1
    .param p1, "skin_id"    # I
    .param p2, "head_id"    # I
    .param p3, "body_ids"    # [I
    .param p4, "tail_id"    # I
    .param p5, "wreck_ids"    # [I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->render_tag:F

    .line 47
    iput p1, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->skin_id:I

    .line 48
    iput p2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->head_id:I

    .line 49
    iput-object p3, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->body_ids:[I

    .line 50
    iput p4, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->tail_id:I

    .line 51
    iput-object p5, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->wreck_ids:[I

    .line 52
    array-length v0, p3

    iput v0, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->bodyTypeCount:I

    .line 53
    return-void
.end method


# virtual methods
.method public getSkinTextures(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget v2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->bodyTypeCount:I

    add-int/lit8 v2, v2, 0x3

    new-array v1, v2, [Ljava/lang/Object;

    .line 79
    .local v1, "textures":[Ljava/lang/Object;
    const/4 v2, 0x0

    invoke-static {p1}, Lcom/wepie/snake/module/game/nick/NickConfig;->getBitmapByString(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v1, v2

    .line 80
    const/4 v2, 0x1

    iget v3, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->head_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 81
    const/4 v2, 0x2

    iget v3, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->tail_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->bodyTypeCount:I

    if-ge v0, v2, :cond_0

    .line 83
    add-int/lit8 v2, v0, 0x3

    iget-object v3, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->body_ids:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_0
    return-object v1
.end method

.method public getWreckTextures()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 89
    iget-object v2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->wreck_ids:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/Object;

    .line 90
    .local v1, "textures":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->wreck_ids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->wreck_ids:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    return-object v1
.end method

.method public setDropId(I)V
    .locals 0
    .param p1, "drop_id"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->drop_id:I

    .line 75
    return-void
.end method

.method public setHeadOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 65
    iput p1, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->headOffset:F

    .line 66
    return-void
.end method

.method public setHeadRate(FF)V
    .locals 0
    .param p1, "rw"    # F
    .param p2, "rh"    # F

    .prologue
    .line 60
    iput p1, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->headRateW:F

    .line 61
    iput p2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->headRateH:F

    .line 62
    return-void
.end method

.method public setRenderTag(F)V
    .locals 0
    .param p1, "tag"    # F

    .prologue
    .line 56
    iput p1, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->render_tag:F

    .line 57
    return-void
.end method

.method public setTailRate(FF)V
    .locals 0
    .param p1, "rw"    # F
    .param p2, "rh"    # F

    .prologue
    .line 69
    iput p1, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->tailRateW:F

    .line 70
    iput p2, p0, Lcom/wepie/snake/module/game/skin/SkinInfo;->tailRateH:F

    .line 71
    return-void
.end method
