.class public Lcom/wepie/snake/module/game/snake/BaseVertexInfo;
.super Ljava/lang/Object;
.source "BaseVertexInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateVertexByDirection([FIFFFFFF)V
    .locals 24
    .param p0, "mVertexArray"    # [F
    .param p1, "vindex"    # I
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "rx"    # F
    .param p5, "ry"    # F
    .param p6, "dir"    # F
    .param p7, "zorder"    # F

    .prologue
    .line 10
    sget v4, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 12
    .local v4, "factor":F
    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x4012d97c7f3321d2L    # 4.71238898038469

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 p6, v0

    .line 13
    div-float v20, p5, p4

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->atan(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v3, v0

    .line 14
    .local v3, "angle":F
    mul-float v20, p4, p4

    mul-float v21, p5, p5

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v2, v0

    .line 15
    .local v2, "R":F
    add-float v5, v3, p6

    .line 16
    .local v5, "rad1":F
    const-wide v20, 0x400921fb54442d18L    # Math.PI

    float-to-double v0, v3

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move/from16 v0, p6

    float-to-double v0, v0

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v6, v0

    .line 18
    .local v6, "rad2":F
    float-to-double v0, v2

    move-wide/from16 v20, v0

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v7, v0

    .line 19
    .local v7, "x01":F
    float-to-double v0, v2

    move-wide/from16 v20, v0

    float-to-double v0, v5

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v13, v0

    .line 20
    .local v13, "y01":F
    float-to-double v0, v2

    move-wide/from16 v20, v0

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v8, v0

    .line 21
    .local v8, "x02":F
    float-to-double v0, v2

    move-wide/from16 v20, v0

    float-to-double v0, v6

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-float v14, v0

    .line 23
    .local v14, "y02":F
    add-float v20, p2, v7

    mul-float v9, v20, v4

    .line 24
    .local v9, "x1":F
    add-float v20, p3, v13

    mul-float v15, v20, v4

    .line 26
    .local v15, "y1":F
    add-float v20, p2, v8

    mul-float v10, v20, v4

    .line 27
    .local v10, "x2":F
    add-float v20, p3, v14

    mul-float v16, v20, v4

    .line 29
    .local v16, "y2":F
    sub-float v20, p2, v7

    mul-float v11, v20, v4

    .line 30
    .local v11, "x3":F
    sub-float v20, p3, v13

    mul-float v17, v20, v4

    .line 32
    .local v17, "y3":F
    sub-float v20, p2, v8

    mul-float v12, v20, v4

    .line 33
    .local v12, "x4":F
    sub-float v20, p3, v14

    mul-float v18, v20, v4

    .line 35
    .local v18, "y4":F
    move/from16 v19, p7

    .line 38
    .local v19, "z":F
    aput v10, p0, p1

    .line 39
    add-int/lit8 v20, p1, 0x1

    aput v16, p0, v20

    .line 40
    add-int/lit8 v20, p1, 0x2

    aput v19, p0, v20

    .line 43
    add-int/lit8 v20, p1, 0x3

    aput v11, p0, v20

    .line 44
    add-int/lit8 v20, p1, 0x4

    aput v17, p0, v20

    .line 45
    add-int/lit8 v20, p1, 0x5

    aput v19, p0, v20

    .line 48
    add-int/lit8 v20, p1, 0x6

    aput v12, p0, v20

    .line 49
    add-int/lit8 v20, p1, 0x7

    aput v18, p0, v20

    .line 50
    add-int/lit8 v20, p1, 0x8

    aput v19, p0, v20

    .line 53
    add-int/lit8 v20, p1, 0x9

    aput v12, p0, v20

    .line 54
    add-int/lit8 v20, p1, 0xa

    aput v18, p0, v20

    .line 55
    add-int/lit8 v20, p1, 0xb

    aput v19, p0, v20

    .line 58
    add-int/lit8 v20, p1, 0xc

    aput v9, p0, v20

    .line 59
    add-int/lit8 v20, p1, 0xd

    aput v15, p0, v20

    .line 60
    add-int/lit8 v20, p1, 0xe

    aput v19, p0, v20

    .line 63
    add-int/lit8 v20, p1, 0xf

    aput v10, p0, v20

    .line 64
    add-int/lit8 v20, p1, 0x10

    aput v16, p0, v20

    .line 65
    add-int/lit8 v20, p1, 0x11

    aput v19, p0, v20

    .line 66
    return-void
.end method

.method public static updateVertexBySize([FIFFFFF)V
    .locals 9
    .param p0, "mVertexArray"    # [F
    .param p1, "index"    # I
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "zorder"    # F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 70
    div-float v1, p4, v8

    .line 71
    .local v1, "rx":F
    div-float v2, p5, v8

    .line 72
    .local v2, "ry":F
    move v7, p6

    .line 74
    .local v7, "z":F
    sget v0, Lcom/wepie/snake/module/game/snake/GameConfig;->factor:F

    .line 75
    .local v0, "factor":F
    neg-float v8, v1

    add-float/2addr v8, p2

    mul-float v3, v8, v0

    .line 76
    .local v3, "x1":F
    add-float v8, v1, p2

    mul-float v4, v8, v0

    .line 77
    .local v4, "x2":F
    add-float v8, v2, p3

    mul-float v5, v8, v0

    .line 78
    .local v5, "y1":F
    neg-float v8, v2

    add-float/2addr v8, p3

    mul-float v6, v8, v0

    .line 81
    .local v6, "y2":F
    aput v3, p0, p1

    .line 82
    add-int/lit8 v8, p1, 0x1

    aput v5, p0, v8

    .line 83
    add-int/lit8 v8, p1, 0x2

    aput v7, p0, v8

    .line 86
    add-int/lit8 v8, p1, 0x3

    aput v3, p0, v8

    .line 87
    add-int/lit8 v8, p1, 0x4

    aput v6, p0, v8

    .line 88
    add-int/lit8 v8, p1, 0x5

    aput v7, p0, v8

    .line 91
    add-int/lit8 v8, p1, 0x6

    aput v4, p0, v8

    .line 92
    add-int/lit8 v8, p1, 0x7

    aput v6, p0, v8

    .line 93
    add-int/lit8 v8, p1, 0x8

    aput v7, p0, v8

    .line 96
    add-int/lit8 v8, p1, 0x9

    aput v4, p0, v8

    .line 97
    add-int/lit8 v8, p1, 0xa

    aput v6, p0, v8

    .line 98
    add-int/lit8 v8, p1, 0xb

    aput v7, p0, v8

    .line 101
    add-int/lit8 v8, p1, 0xc

    aput v4, p0, v8

    .line 102
    add-int/lit8 v8, p1, 0xd

    aput v5, p0, v8

    .line 103
    add-int/lit8 v8, p1, 0xe

    aput v7, p0, v8

    .line 106
    add-int/lit8 v8, p1, 0xf

    aput v3, p0, v8

    .line 107
    add-int/lit8 v8, p1, 0x10

    aput v5, p0, v8

    .line 108
    add-int/lit8 v8, p1, 0x11

    aput v7, p0, v8

    .line 109
    return-void
.end method
