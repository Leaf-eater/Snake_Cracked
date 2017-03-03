.class public Lcom/wepie/snake/module/game/snake/GameConfig;
.super Ljava/lang/Object;
.source "GameConfig.java"


# static fields
.field public static final BIG_SNAKE_COUNT:I = 0x3

.field public static final BIG_SNAKE_INIT_LENGTH:I = 0x1e

.field public static final BIG_SNAKE_INIT_LENGTH_ADD_RANDOM:I = 0x14

.field public static final BODY_CHANGE_MAX_SCORE:I = 0x1450

.field public static DEFAULT_BODY_RADIUS:I = 0x0

.field public static FRAMES_COUNT_FOR_DROP_FOOD:I = 0x0

.field public static final INIT_SNAKE_COUNT:I = 0x14

.field public static final M:I = 0x10

.field public static MAP_HEIGHT:F = 0.0f

.field public static MAP_WIDTH:F = 0.0f

.field public static MAX_BODY_RADIUS:I = 0x0

.field public static final MEDIUM_SNAKE_COUNT:I = 0x5

.field public static final MEDIUM_SNAKE_INIT_LENGTH:I = 0xa

.field public static final MEDIUM_SNAKE_INIT_LENGTH_ADD_RANDOM:I = 0xa

.field public static final N:I = 0x10

.field public static PER_NODE_POINT_COUNT:I = 0x0

.field public static final SNAKE_INIT_LENGTH:I = 0x5

.field public static factor:F = 0.0f

.field public static final per_frame_rad:F = 0.17453292f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x40800000    # 4.0f

    .line 11
    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    .line 12
    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    .line 21
    const/4 v0, 0x5

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    .line 22
    const/16 v0, 0xc

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->FRAMES_COUNT_FOR_DROP_FOOD:I

    .line 23
    const/high16 v0, 0x41100000    # 9.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->DEFAULT_BODY_RADIUS:I

    .line 24
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAX_BODY_RADIUS:I

    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
