.class public Lcom/wepie/snake/module/game/snake/CollisionUtil;
.super Ljava/lang/Object;
.source "CollisionUtil.java"


# static fields
.field private static final AI_TEST_DIS_FACTOR:I = 0x3

.field private static final BORDER_TEST_DIS_FACTOR:I = 0x6

.field private static final DEFAULT_MIN_AI_DISTANCE:F = 10000.0f

.field private static final WRECK_VISIBLE_DIS:F

.field public static bottomBorder:F

.field private static foodWith:F

.field public static leftBorder:F

.field public static rightBorder:F

.field private static size:I

.field public static topBorder:F


# instance fields
.field private curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

.field private foodDis:F

.field private gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

.field private meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

.field private minAIDistance:F

.field private minDisX:F

.field private minDisY:F

.field private minWreckDistance:F

.field private minWreckX:F

.field private minWreckY:F

.field private random:Ljava/util/Random;

.field private wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    neg-float v0, v0

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->leftBorder:F

    .line 18
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->topBorder:F

    .line 19
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_WIDTH:F

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_left:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->rightBorder:F

    .line 20
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->MAP_HEIGHT:F

    neg-float v0, v0

    sget v1, Lcom/wepie/snake/module/game/util/CoordUtil;->camera_top:F

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->bottomBorder:F

    .line 22
    const/16 v0, 0xff

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->size:I

    .line 23
    sget v0, Lcom/wepie/snake/module/game/food/Food;->ur:F

    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v0, v1

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->foodWith:F

    .line 33
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/ScreenUtil;->dip2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/wepie/snake/module/game/util/CoordUtil;->screenSize2GLSize(F)F

    move-result v0

    sput v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->WRECK_VISIBLE_DIS:F

    return-void
.end method

.method public constructor <init>(Lcom/wepie/snake/module/game/snake/MeshUtil;Lcom/wepie/snake/module/game/food/WreckFactory;Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;)V
    .locals 2
    .param p1, "meshUtil"    # Lcom/wepie/snake/module/game/snake/MeshUtil;
    .param p2, "wreckFactory"    # Lcom/wepie/snake/module/game/food/WreckFactory;
    .param p3, "callback"    # Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->random:Ljava/util/Random;

    .line 128
    iput v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    .line 129
    iput v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    .line 38
    iput-object p2, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;

    .line 39
    iput-object p3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    .line 40
    return-void
.end method

.method private changeAiDirection()V
    .locals 9

    .prologue
    .line 233
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    if-nez v0, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    const v8, 0x461c4000    # 10000.0f

    cmpl-float v0, v0, v8

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    invoke-virtual {v0}, Lcom/wepie/snake/module/game/snake/SnakeStatus;->speedDown()V

    .line 236
    :cond_2
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    sget v8, Lcom/wepie/snake/module/game/snake/CollisionUtil;->leftBorder:F

    sub-float v2, v0, v8

    .line 237
    .local v2, "leftDis":F
    sget v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->topBorder:F

    iget v8, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    sub-float v3, v0, v8

    .line 238
    .local v3, "topDis":F
    sget v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->rightBorder:F

    iget v8, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    sub-float v4, v0, v8

    .line 239
    .local v4, "rightDis":F
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    sget v8, Lcom/wepie/snake/module/game/snake/CollisionUtil;->bottomBorder:F

    sub-float v5, v0, v8

    .line 240
    .local v5, "bottomDis":F
    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 241
    .local v1, "minBorderDis":F
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 242
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 244
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float v7, v0, v8

    .line 245
    .local v7, "warnBorderDis":F
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    const/high16 v8, 0x40400000    # 3.0f

    mul-float v6, v0, v8

    .line 247
    .local v6, "warnAIDis":F
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 248
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_3

    .line 249
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeDirectionForAi()V

    goto :goto_0

    .line 250
    :cond_3
    cmpg-float v0, v1, v7

    if-gtz v0, :cond_4

    move-object v0, p0

    .line 251
    invoke-direct/range {v0 .. v5}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeDirectionForBorder(FFFFF)V

    goto :goto_0

    .line 252
    :cond_4
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    sget v8, Lcom/wepie/snake/module/game/snake/CollisionUtil;->WRECK_VISIBLE_DIS:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_5

    .line 253
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeDirectionForWreck()V

    goto :goto_0

    .line 255
    :cond_5
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeRandomDirection()V

    goto :goto_0

    .line 258
    :cond_6
    cmpg-float v0, v1, v7

    if-gtz v0, :cond_7

    move-object v0, p0

    .line 259
    invoke-direct/range {v0 .. v5}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeDirectionForBorder(FFFFF)V

    goto :goto_0

    .line 260
    :cond_7
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    cmpg-float v0, v0, v6

    if-gtz v0, :cond_8

    .line 261
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeDirectionForAi()V

    goto/16 :goto_0

    .line 262
    :cond_8
    iget v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    sget v8, Lcom/wepie/snake/module/game/snake/CollisionUtil;->WRECK_VISIBLE_DIS:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_9

    .line 263
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeDirectionForWreck()V

    goto/16 :goto_0

    .line 265
    :cond_9
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeRandomDirection()V

    goto/16 :goto_0
.end method

.method private changeDirectionForAi()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 272
    iget v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minDisX:F

    sub-float v0, v3, v4

    .line 273
    .local v0, "newVectorX":F
    iget v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minDisY:F

    sub-float v1, v3, v4

    .line 274
    .local v1, "newVectorY":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v5}, Lcom/wepie/snake/module/game/util/CoordUtil;->getVectorRadians(FFFF)F

    move-result v2

    .line 275
    .local v2, "r":F
    cmpg-float v3, v1, v5

    if-gez v3, :cond_0

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v2

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    invoke-virtual {v3, v2}, Lcom/wepie/snake/module/game/snake/MoveInfo;->setTargetDirection(F)V

    .line 277
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    const/4 v4, 0x1

    iput v4, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->changeDirectionType:I

    .line 278
    return-void
.end method

.method private changeDirectionForBorder(FFFFF)V
    .locals 5
    .param p1, "minBorderDis"    # F
    .param p2, "leftDis"    # F
    .param p3, "topDis"    # F
    .param p4, "rightDis"    # F
    .param p5, "bottomDis"    # F

    .prologue
    const/4 v4, 0x2

    .line 281
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v1, v1, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v2, v2, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v1, v1, Lcom/wepie/snake/module/game/snake/MoveInfo;->changeDirectionType:I

    if-ne v1, v4, :cond_0

    .line 294
    :goto_0
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    .line 283
    .local v0, "targetDir":F
    cmpl-float v1, p1, p2

    if-nez v1, :cond_2

    .line 284
    const/4 v0, 0x0

    .line 292
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    invoke-virtual {v1, v0}, Lcom/wepie/snake/module/game/snake/MoveInfo;->setTargetDirection(F)V

    .line 293
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iput v4, v1, Lcom/wepie/snake/module/game/snake/MoveInfo;->changeDirectionType:I

    goto :goto_0

    .line 285
    :cond_2
    cmpl-float v1, p1, p3

    if-nez v1, :cond_3

    .line 286
    const-wide v2, 0x4070e00000000000L    # 270.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_1

    .line 287
    :cond_3
    cmpl-float v1, p1, p4

    if-nez v1, :cond_4

    .line 288
    const-wide v2, 0x4066800000000000L    # 180.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_1

    .line 289
    :cond_4
    cmpl-float v1, p1, p5

    if-nez v1, :cond_1

    .line 290
    const-wide v2, 0x4056800000000000L    # 90.0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    double-to-float v0, v2

    goto :goto_1
.end method

.method private changeDirectionForWreck()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    .line 297
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->target_rad:F

    iget-object v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v4, v4, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v4, v4, Lcom/wepie/snake/module/game/snake/MoveInfo;->cur_direction:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->changeDirectionType:I

    if-ne v3, v8, :cond_0

    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dirTargetX:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckX:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dirTargetY:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 308
    :goto_0
    return-void

    .line 299
    :cond_0
    iget v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckX:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    sub-float v0, v3, v4

    .line 300
    .local v0, "newVectorX":F
    iget v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckY:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    sub-float v1, v3, v4

    .line 301
    .local v1, "newVectorY":F
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v5}, Lcom/wepie/snake/module/game/util/CoordUtil;->getVectorRadians(FFFF)F

    move-result v2

    .line 302
    .local v2, "r":F
    cmpg-float v3, v1, v5

    if-gez v3, :cond_1

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v6, v2

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    invoke-virtual {v3, v2}, Lcom/wepie/snake/module/game/snake/MoveInfo;->setTargetDirection(F)V

    .line 304
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->speedUp()V

    .line 305
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iput v8, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->changeDirectionType:I

    .line 306
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckX:F

    iput v4, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dirTargetX:F

    .line 307
    iget-object v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v3, v3, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckY:F

    iput v4, v3, Lcom/wepie/snake/module/game/snake/MoveInfo;->dirTargetY:F

    goto :goto_0
.end method

.method private changeRandomDirection()V
    .locals 6

    .prologue
    .line 311
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->random:Ljava/util/Random;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 312
    .local v1, "num":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->random:Ljava/util/Random;

    const/16 v3, 0x168

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 314
    .local v0, "degree":I
    iget-object v2, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v2, v2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    int-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v3, v4

    invoke-virtual {v2, v3}, Lcom/wepie/snake/module/game/snake/MoveInfo;->setTargetDirection(F)V

    .line 316
    .end local v0    # "degree":I
    :cond_0
    return-void
.end method

.method private checkBorder()Z
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v1, v1, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    const v2, 0x3f19999a    # 0.6f

    mul-float v0, v1, v2

    .line 75
    .local v0, "w":F
    iget v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    sget v2, Lcom/wepie/snake/module/game/snake/CollisionUtil;->leftBorder:F

    add-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    sget v2, Lcom/wepie/snake/module/game/snake/CollisionUtil;->rightBorder:F

    sub-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    sget v2, Lcom/wepie/snake/module/game/snake/CollisionUtil;->topBorder:F

    sub-float/2addr v2, v0

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    sget v2, Lcom/wepie/snake/module/game/snake/CollisionUtil;->bottomBorder:F

    add-float/2addr v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 77
    const/4 v1, 0x0

    .line 79
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 2
    .param p1, "dieSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;
    .param p2, "killerSnake"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    .line 84
    iget-object v0, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v0, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    if-lez v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v0, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->superFrameCount:I

    if-gtz v0, :cond_0

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->wreckFactory:Lcom/wepie/snake/module/game/food/WreckFactory;

    invoke-virtual {v0, p1}, Lcom/wepie/snake/module/game/food/WreckFactory;->addWrecks(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 89
    invoke-virtual {p1}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->doDie()V

    .line 91
    iget-boolean v0, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    if-nez v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onGameOver()V

    goto :goto_0

    .line 93
    :cond_3
    if-eqz p2, :cond_0

    .line 94
    iget-object v0, p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget v1, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->killNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->killNum:I

    .line 95
    iget-boolean v0, p2, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onKillAi()V

    goto :goto_0
.end method

.method private testBottom(I)V
    .locals 2
    .param p1, "meshNum"    # I

    .prologue
    .line 107
    add-int/lit8 v0, p1, 0x10

    .line 108
    .local v0, "bottomNum":I
    sget v1, Lcom/wepie/snake/module/game/snake/CollisionUtil;->size:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testNum(I)V

    .line 109
    :cond_0
    return-void
.end method

.method private testLeftMesh(I)V
    .locals 1
    .param p1, "meshNum"    # I

    .prologue
    .line 112
    add-int/lit8 v0, p1, -0x1

    .line 113
    .local v0, "leftNum":I
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testNum(I)V

    .line 114
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testTop(I)V

    .line 115
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testBottom(I)V

    .line 116
    return-void
.end method

.method private testNum(I)V
    .locals 32
    .param p1, "meshNum"    # I

    .prologue
    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->meshUtil:Lcom/wepie/snake/module/game/snake/MeshUtil;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/MeshUtil;->meshInfos:[Lcom/wepie/snake/module/game/snake/MeshInfo;

    move-object/from16 v28, v0

    aget-object v17, v28, p1

    .line 137
    .local v17, "meshInfo":Lcom/wepie/snake/module/game/snake/MeshInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyInfos:[Lcom/wepie/snake/module/game/snake/PointInfo;

    move-object/from16 v19, v0

    .line 138
    .local v19, "pointInfos":[Lcom/wepie/snake/module/game/snake/PointInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MeshInfo;->bodyIndex:I

    move/from16 v16, v0

    .line 140
    .local v16, "len":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 141
    aget-object v18, v19, v15

    .line 142
    .local v18, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->snakeInfo:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v22, v0

    .line 143
    .local v22, "testSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 140
    :cond_2
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 144
    :cond_3
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 146
    move-object/from16 v0, v18

    iget v12, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 147
    .local v12, "fx":F
    move-object/from16 v0, v18

    iget v13, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 148
    .local v13, "fy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v28, v0

    sub-float v28, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v29, v0

    sub-float v29, v29, v12

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v29, v0

    sub-float v29, v29, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v30, v0

    sub-float v30, v30, v13

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v8, v0

    .line 149
    .local v8, "dis":F
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    move/from16 v29, v0

    add-float v28, v28, v29

    const v29, 0x3f4ccccd    # 0.8f

    mul-float v9, v28, v29

    .line 150
    .local v9, "dt":F
    cmpg-float v28, v8, v9

    if-gtz v28, :cond_7

    .line 151
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getHeadPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v14

    .line 152
    .local v14, "headPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v0, v14, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    move/from16 v23, v0

    .line 153
    .local v23, "thx":F
    iget v0, v14, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    move/from16 v24, v0

    .line 154
    .local v24, "thy":F
    cmpl-float v28, v23, v12

    if-nez v28, :cond_6

    cmpl-float v28, v24, v13

    if-nez v28, :cond_6

    .line 155
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 156
    .local v20, "secondPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    move/from16 v25, v0

    .line 157
    .local v25, "tsx":F
    move-object/from16 v0, v20

    iget v0, v0, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    move/from16 v26, v0

    .line 159
    .local v26, "tsy":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/BodyInfo;->pointArray:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/wepie/snake/module/game/snake/PointInfo;

    .line 160
    .local v6, "curSecondPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v4, v6, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    .line 161
    .local v4, "csx":F
    iget v5, v6, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    .line 164
    .local v5, "csy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v28, v0

    sub-float v28, v28, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v29, v0

    sub-float v29, v29, v25

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v29, v0

    sub-float v29, v29, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v30, v0

    sub-float v30, v30, v26

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v7, v0

    .line 165
    .local v7, "curTestDis":F
    sub-float v28, v23, v4

    sub-float v29, v23, v4

    mul-float v28, v28, v29

    sub-float v29, v24, v5

    sub-float v30, v24, v5

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v21, v0

    .line 167
    .local v21, "testCurDis":F
    cmpg-float v28, v7, v21

    if-gez v28, :cond_4

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto/16 :goto_0

    .line 169
    :cond_4
    cmpl-float v28, v7, v21

    if-lez v28, :cond_5

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto/16 :goto_0

    .line 172
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto/16 :goto_0

    .line 176
    .end local v4    # "csx":F
    .end local v5    # "csy":F
    .end local v6    # "curSecondPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v7    # "curTestDis":F
    .end local v20    # "secondPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v21    # "testCurDis":F
    .end local v25    # "tsx":F
    .end local v26    # "tsy":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->doSnakeDie(Lcom/wepie/snake/module/game/snake/SnakeInfo;Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto/16 :goto_0

    .line 181
    .end local v14    # "headPoint":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v23    # "thx":F
    .end local v24    # "thy":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v12, v13}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isPointVisual(FF)Z

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    move/from16 v28, v0

    cmpg-float v28, v8, v28

    if-gez v28, :cond_2

    .line 183
    sub-float v28, v8, v9

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    .line 184
    move-object/from16 v0, p0

    iput v12, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minDisX:F

    .line 185
    move-object/from16 v0, p0

    iput v13, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minDisY:F

    goto/16 :goto_2

    .line 190
    .end local v8    # "dis":F
    .end local v9    # "dt":F
    .end local v12    # "fx":F
    .end local v13    # "fy":F
    .end local v18    # "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    .end local v22    # "testSnake":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    :cond_8
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    .line 191
    .local v11, "foodInfos":[Lcom/wepie/snake/module/game/food/FoodInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MeshInfo;->foodIndex:I

    move/from16 v16, v0

    .line 192
    const/4 v15, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 193
    aget-object v10, v11, v15

    .line 194
    .local v10, "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v10}, Lcom/wepie/snake/module/game/food/FoodInfo;->isNormal()Z

    move-result v28

    if-nez v28, :cond_a

    .line 192
    :cond_9
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 195
    :cond_a
    iget v12, v10, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 196
    .restart local v12    # "fx":F
    iget v13, v10, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 197
    .restart local v13    # "fy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v28, v0

    sub-float v28, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v29, v0

    sub-float v29, v29, v12

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v29, v0

    sub-float v29, v29, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v30, v0

    sub-float v30, v30, v13

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v8, v0

    .line 198
    .restart local v8    # "dis":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->foodDis:F

    move/from16 v28, v0

    cmpg-float v28, v8, v28

    if-gez v28, :cond_9

    .line 199
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MoveInfo;->dx:F

    move/from16 v29, v0

    sget v30, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    const/high16 v30, 0x3fc00000    # 1.5f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MoveInfo;->dy:F

    move/from16 v30, v0

    sget v31, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const/high16 v31, 0x3fc00000    # 1.5f

    mul-float v30, v30, v31

    add-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Lcom/wepie/snake/module/game/food/FoodInfo;->setEndXY(FF)V

    .line 200
    const/16 v28, 0x2

    move/from16 v0, v28

    iput v0, v10, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->doEatFood()V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onSnakeLengthChange(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto/16 :goto_4

    .line 207
    .end local v8    # "dis":F
    .end local v10    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    .end local v12    # "fx":F
    .end local v13    # "fy":F
    :cond_b
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckInfos:[Lcom/wepie/snake/module/game/food/FoodInfo;

    move-object/from16 v27, v0

    .line 208
    .local v27, "wrecksInfos":[Lcom/wepie/snake/module/game/food/FoodInfo;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MeshInfo;->wreckIndex:I

    move/from16 v16, v0

    .line 209
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 210
    aget-object v10, v27, v15

    .line 211
    .restart local v10    # "foodInfo":Lcom/wepie/snake/module/game/food/FoodInfo;
    invoke-virtual {v10}, Lcom/wepie/snake/module/game/food/FoodInfo;->isNormal()Z

    move-result v28

    if-nez v28, :cond_d

    .line 209
    :cond_c
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 212
    :cond_d
    iget v12, v10, Lcom/wepie/snake/module/game/food/FoodInfo;->x:F

    .line 213
    .restart local v12    # "fx":F
    iget v13, v10, Lcom/wepie/snake/module/game/food/FoodInfo;->y:F

    .line 214
    .restart local v13    # "fy":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v28, v0

    sub-float v28, v28, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v29, v0

    sub-float v29, v29, v12

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v29, v0

    sub-float v29, v29, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v30, v0

    sub-float v30, v30, v13

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v8, v0

    .line 215
    .restart local v8    # "dis":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->foodDis:F

    move/from16 v28, v0

    cmpg-float v28, v8, v28

    if-gez v28, :cond_e

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MoveInfo;->dx:F

    move/from16 v29, v0

    sget v30, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v29, v29, v30

    const/high16 v30, 0x3fc00000    # 1.5f

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->moveInfo:Lcom/wepie/snake/module/game/snake/MoveInfo;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/wepie/snake/module/game/snake/MoveInfo;->dy:F

    move/from16 v30, v0

    sget v31, Lcom/wepie/snake/module/game/snake/GameConfig;->PER_NODE_POINT_COUNT:I

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v30, v30, v31

    const/high16 v31, 0x3fc00000    # 1.5f

    mul-float v30, v30, v31

    add-float v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v10, v0, v1}, Lcom/wepie/snake/module/game/food/FoodInfo;->setEndXY(FF)V

    .line 217
    const/16 v28, 0x2

    move/from16 v0, v28

    iput v0, v10, Lcom/wepie/snake/module/game/food/FoodInfo;->status:I

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->doEatWreck()V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->gameStatusCallback:Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/wepie/snake/module/game/SnakeSurfaceView$GameStatusCallback;->onSnakeLengthChange(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V

    goto/16 :goto_6

    .line 221
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    move/from16 v28, v0

    if-eqz v28, :cond_c

    .line 222
    move-object/from16 v0, p0

    iget v0, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    move/from16 v28, v0

    cmpg-float v28, v8, v28

    if-gez v28, :cond_c

    .line 223
    move-object/from16 v0, p0

    iput v8, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    .line 224
    move-object/from16 v0, p0

    iput v12, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckX:F

    .line 225
    move-object/from16 v0, p0

    iput v13, v0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckY:F

    goto/16 :goto_6
.end method

.method private testRightMesh(I)V
    .locals 1
    .param p1, "meshNum"    # I

    .prologue
    .line 119
    add-int/lit8 v0, p1, 0x1

    .line 120
    .local v0, "rightNum":I
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testNum(I)V

    .line 121
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testTop(I)V

    .line 122
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testBottom(I)V

    .line 123
    return-void
.end method

.method private testTop(I)V
    .locals 1
    .param p1, "meshNum"    # I

    .prologue
    .line 102
    add-int/lit8 v0, p1, -0x10

    .line 103
    .local v0, "topNum":I
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testNum(I)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public detectionSnake(Lcom/wepie/snake/module/game/snake/SnakeInfo;)V
    .locals 6
    .param p1, "snakeInfo"    # Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .prologue
    const v5, 0x461c4000    # 10000.0f

    .line 43
    iget-object v3, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->snakeStatus:Lcom/wepie/snake/module/game/snake/SnakeStatus;

    iget-boolean v3, v3, Lcom/wepie/snake/module/game/snake/SnakeStatus;->isAlive:Z

    if-nez v3, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iput-object p1, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->curSnake:Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 46
    iget-object v3, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    invoke-virtual {v3}, Lcom/wepie/snake/module/game/snake/BodyInfo;->getHeadPoint()Lcom/wepie/snake/module/game/snake/PointInfo;

    move-result-object v2

    .line 47
    .local v2, "pointInfo":Lcom/wepie/snake/module/game/snake/PointInfo;
    iget v3, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->x:F

    iput v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    .line 48
    iget v3, v2, Lcom/wepie/snake/module/game/snake/PointInfo;->y:F

    iput v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    .line 50
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->checkBorder()Z

    move-result v0

    .line 51
    .local v0, "isAlive":Z
    if-eqz v0, :cond_0

    .line 53
    iget-object v3, p1, Lcom/wepie/snake/module/game/snake/SnakeInfo;->bodyInfo:Lcom/wepie/snake/module/game/snake/BodyInfo;

    iget v3, v3, Lcom/wepie/snake/module/game/snake/BodyInfo;->bodyGlWith:F

    sget v4, Lcom/wepie/snake/module/game/snake/CollisionUtil;->foodWith:F

    add-float/2addr v3, v4

    iput v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->foodDis:F

    .line 54
    iget v3, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->x:F

    iget v4, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->y:F

    invoke-static {v3, v4}, Lcom/wepie/snake/module/game/snake/MeshUtil;->getMeshNum(FF)I

    move-result v1

    .line 56
    .local v1, "meshNum":I
    iput v5, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minAIDistance:F

    .line 57
    iput v5, p0, Lcom/wepie/snake/module/game/snake/CollisionUtil;->minWreckDistance:F

    .line 59
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testNum(I)V

    .line 60
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testTop(I)V

    .line 61
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testBottom(I)V

    .line 63
    rem-int/lit8 v3, v1, 0x10

    if-eqz v3, :cond_2

    .line 64
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testLeftMesh(I)V

    .line 67
    :cond_2
    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_3

    .line 68
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->testRightMesh(I)V

    .line 70
    :cond_3
    invoke-direct {p0}, Lcom/wepie/snake/module/game/snake/CollisionUtil;->changeAiDirection()V

    goto :goto_0
.end method
