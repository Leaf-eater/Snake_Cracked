.class public Lcom/wepie/snake/module/game/skin/SkinManager;
.super Ljava/lang/Object;
.source "SkinManager.java"


# static fields
.field public static final DEFAULT_TAIL_ID:I = 0x7f0200fb

.field private static bodies:[[I

.field private static drops:[I

.field private static headOffsetRate:[F

.field private static headSizeRate:[[F

.field private static heads:[I

.field private static r:Ljava/util/Random;

.field private static renderTags:[F

.field public static skinArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/skin/SkinInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static tailSizeRate:[[F

.field private static tails:[I

.field private static wrecks:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/16 v10, 0x12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 14
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    .line 15
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->r:Ljava/util/Random;

    .line 18
    new-array v2, v10, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->heads:[I

    .line 40
    new-array v2, v10, [[I

    new-array v3, v9, [I

    const v4, 0x7f02010b

    aput v4, v3, v8

    aput-object v3, v2, v8

    new-array v3, v9, [I

    const v4, 0x7f02010d

    aput v4, v3, v8

    aput-object v3, v2, v9

    new-array v3, v9, [I

    const v4, 0x7f02010f

    aput v4, v3, v8

    aput-object v3, v2, v7

    new-array v3, v9, [I

    const v4, 0x7f020111

    aput v4, v3, v8

    aput-object v3, v2, v11

    const/4 v3, 0x4

    new-array v4, v9, [I

    const v5, 0x7f0200e0

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v9, [I

    const v5, 0x7f0200f9

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v9, [I

    const v5, 0x7f020101

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_2

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v9, [I

    const v5, 0x7f020107

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v9, [I

    const v5, 0x7f0200e2

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v9, [I

    const v5, 0x7f0200e4

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v7, [I

    fill-array-data v4, :array_3

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v7, [I

    fill-array-data v4, :array_4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v7, [I

    fill-array-data v4, :array_5

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v9, [I

    const v5, 0x7f0200f0

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v11, [I

    fill-array-data v4, :array_6

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v7, [I

    fill-array-data v4, :array_7

    aput-object v4, v2, v3

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->bodies:[[I

    .line 63
    new-array v2, v10, [I

    fill-array-data v2, :array_8

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->tails:[I

    .line 86
    new-array v2, v10, [[I

    new-array v3, v9, [I

    const v4, 0x7f02010b

    aput v4, v3, v8

    aput-object v3, v2, v8

    new-array v3, v9, [I

    const v4, 0x7f02010d

    aput v4, v3, v8

    aput-object v3, v2, v9

    new-array v3, v9, [I

    const v4, 0x7f02010f

    aput v4, v3, v8

    aput-object v3, v2, v7

    new-array v3, v9, [I

    const v4, 0x7f020111

    aput v4, v3, v8

    aput-object v3, v2, v11

    const/4 v3, 0x4

    new-array v4, v9, [I

    const v5, 0x7f0200e0

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v7, [I

    fill-array-data v4, :array_9

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v7, [I

    fill-array-data v4, :array_a

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v9, [I

    const v5, 0x7f020101

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v7, [I

    fill-array-data v4, :array_b

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v9, [I

    const v5, 0x7f02010a

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v9, [I

    const v5, 0x7f0200e2

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v9, [I

    const v5, 0x7f0200e6

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v7, [I

    fill-array-data v4, :array_c

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v7, [I

    fill-array-data v4, :array_d

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v7, [I

    fill-array-data v4, :array_e

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v9, [I

    const v5, 0x7f0200f0

    aput v5, v4, v8

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v11, [I

    fill-array-data v4, :array_f

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v7, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v3

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->wrecks:[[I

    .line 109
    new-array v2, v10, [I

    fill-array-data v2, :array_11

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->drops:[I

    .line 115
    new-array v2, v10, [F

    fill-array-data v2, :array_12

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->renderTags:[F

    .line 139
    new-array v2, v10, [[F

    new-array v3, v7, [F

    fill-array-data v3, :array_13

    aput-object v3, v2, v8

    new-array v3, v7, [F

    fill-array-data v3, :array_14

    aput-object v3, v2, v9

    new-array v3, v7, [F

    fill-array-data v3, :array_15

    aput-object v3, v2, v7

    new-array v3, v7, [F

    fill-array-data v3, :array_16

    aput-object v3, v2, v11

    const/4 v3, 0x4

    new-array v4, v7, [F

    fill-array-data v4, :array_17

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v7, [F

    fill-array-data v4, :array_18

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v7, [F

    fill-array-data v4, :array_19

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v7, [F

    fill-array-data v4, :array_1a

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v7, [F

    fill-array-data v4, :array_1b

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v7, [F

    fill-array-data v4, :array_1c

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v7, [F

    fill-array-data v4, :array_1d

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v7, [F

    fill-array-data v4, :array_1e

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v7, [F

    fill-array-data v4, :array_1f

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v7, [F

    fill-array-data v4, :array_20

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v7, [F

    fill-array-data v4, :array_21

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v7, [F

    fill-array-data v4, :array_22

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v7, [F

    fill-array-data v4, :array_23

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v7, [F

    fill-array-data v4, :array_24

    aput-object v4, v2, v3

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->headSizeRate:[[F

    .line 164
    new-array v2, v10, [F

    fill-array-data v2, :array_25

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->headOffsetRate:[F

    .line 183
    new-array v2, v10, [[F

    new-array v3, v7, [F

    fill-array-data v3, :array_26

    aput-object v3, v2, v8

    new-array v3, v7, [F

    fill-array-data v3, :array_27

    aput-object v3, v2, v9

    new-array v3, v7, [F

    fill-array-data v3, :array_28

    aput-object v3, v2, v7

    new-array v3, v7, [F

    fill-array-data v3, :array_29

    aput-object v3, v2, v11

    const/4 v3, 0x4

    new-array v4, v7, [F

    fill-array-data v4, :array_2a

    aput-object v4, v2, v3

    const/4 v3, 0x5

    new-array v4, v7, [F

    fill-array-data v4, :array_2b

    aput-object v4, v2, v3

    const/4 v3, 0x6

    new-array v4, v7, [F

    fill-array-data v4, :array_2c

    aput-object v4, v2, v3

    const/4 v3, 0x7

    new-array v4, v7, [F

    fill-array-data v4, :array_2d

    aput-object v4, v2, v3

    const/16 v3, 0x8

    new-array v4, v7, [F

    fill-array-data v4, :array_2e

    aput-object v4, v2, v3

    const/16 v3, 0x9

    new-array v4, v7, [F

    fill-array-data v4, :array_2f

    aput-object v4, v2, v3

    const/16 v3, 0xa

    new-array v4, v7, [F

    fill-array-data v4, :array_30

    aput-object v4, v2, v3

    const/16 v3, 0xb

    new-array v4, v7, [F

    fill-array-data v4, :array_31

    aput-object v4, v2, v3

    const/16 v3, 0xc

    new-array v4, v7, [F

    fill-array-data v4, :array_32

    aput-object v4, v2, v3

    const/16 v3, 0xd

    new-array v4, v7, [F

    fill-array-data v4, :array_33

    aput-object v4, v2, v3

    const/16 v3, 0xe

    new-array v4, v7, [F

    fill-array-data v4, :array_34

    aput-object v4, v2, v3

    const/16 v3, 0xf

    new-array v4, v7, [F

    fill-array-data v4, :array_35

    aput-object v4, v2, v3

    const/16 v3, 0x10

    new-array v4, v7, [F

    fill-array-data v4, :array_36

    aput-object v4, v2, v3

    const/16 v3, 0x11

    new-array v4, v7, [F

    fill-array-data v4, :array_37

    aput-object v4, v2, v3

    sput-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->tailSizeRate:[[F

    .line 207
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->heads:[I

    array-length v6, v2

    .local v6, "len":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 208
    new-instance v0, Lcom/wepie/snake/module/game/skin/SkinInfo;

    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->heads:[I

    aget v2, v2, v1

    sget-object v3, Lcom/wepie/snake/module/game/skin/SkinManager;->bodies:[[I

    aget-object v3, v3, v1

    sget-object v4, Lcom/wepie/snake/module/game/skin/SkinManager;->tails:[I

    aget v4, v4, v1

    sget-object v5, Lcom/wepie/snake/module/game/skin/SkinManager;->wrecks:[[I

    aget-object v5, v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/wepie/snake/module/game/skin/SkinInfo;-><init>(II[II[I)V

    .line 209
    .local v0, "skinInfo":Lcom/wepie/snake/module/game/skin/SkinInfo;
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->headSizeRate:[[F

    aget-object v2, v2, v1

    aget v2, v2, v8

    sget-object v3, Lcom/wepie/snake/module/game/skin/SkinManager;->headSizeRate:[[F

    aget-object v3, v3, v1

    aget v3, v3, v9

    invoke-virtual {v0, v2, v3}, Lcom/wepie/snake/module/game/skin/SkinInfo;->setHeadRate(FF)V

    .line 210
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->headOffsetRate:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/wepie/snake/module/game/skin/SkinInfo;->setHeadOffset(F)V

    .line 211
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->tailSizeRate:[[F

    aget-object v2, v2, v1

    aget v2, v2, v8

    sget-object v3, Lcom/wepie/snake/module/game/skin/SkinManager;->tailSizeRate:[[F

    aget-object v3, v3, v1

    aget v3, v3, v9

    invoke-virtual {v0, v2, v3}, Lcom/wepie/snake/module/game/skin/SkinInfo;->setTailRate(FF)V

    .line 212
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->renderTags:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/wepie/snake/module/game/skin/SkinInfo;->setRenderTag(F)V

    .line 213
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->drops:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lcom/wepie/snake/module/game/skin/SkinInfo;->setDropId(I)V

    .line 214
    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "skinInfo":Lcom/wepie/snake/module/game/skin/SkinInfo;
    :cond_0
    return-void

    .line 18
    :array_0
    .array-data 4
        0x7f02010c
        0x7f02010e
        0x7f020110
        0x7f020112
        0x7f0200e1
        0x7f0200fa
        0x7f020100
        0x7f020102
        0x7f020106
        0x7f020108
        0x7f0200e3
        0x7f0200e5
        0x7f0200e9
        0x7f0200ec
        0x7f0200ef
        0x7f0200f1
        0x7f0200f5
        0x7f0200f8
    .end array-data

    .line 40
    :array_1
    .array-data 4
        0x7f0200ff
        0x7f0200fe
    .end array-data

    :array_2
    .array-data 4
        0x7f020105
        0x7f020104
    .end array-data

    :array_3
    .array-data 4
        0x7f0200e7
        0x7f0200e8
    .end array-data

    :array_4
    .array-data 4
        0x7f0200ea
        0x7f0200eb
    .end array-data

    :array_5
    .array-data 4
        0x7f0200ed
        0x7f0200ee
    .end array-data

    :array_6
    .array-data 4
        0x7f0200f2
        0x7f0200f3
        0x7f0200f4
    .end array-data

    :array_7
    .array-data 4
        0x7f0200f6
        0x7f0200f7
    .end array-data

    .line 63
    :array_8
    .array-data 4
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f020103
        0x7f0200fb
        0x7f020109
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
        0x7f0200fb
    .end array-data

    .line 86
    :array_9
    .array-data 4
        0x7f0200fc
        0x7f0200fd
    .end array-data

    :array_a
    .array-data 4
        0x7f0200fe
        0x7f0200ff
    .end array-data

    :array_b
    .array-data 4
        0x7f020104
        0x7f020105
    .end array-data

    :array_c
    .array-data 4
        0x7f0200e7
        0x7f0200e8
    .end array-data

    :array_d
    .array-data 4
        0x7f0200ea
        0x7f0200eb
    .end array-data

    :array_e
    .array-data 4
        0x7f0200ed
        0x7f0200ee
    .end array-data

    :array_f
    .array-data 4
        0x7f0200f2
        0x7f0200f3
        0x7f0200f4
    .end array-data

    :array_10
    .array-data 4
        0x7f0200f6
        0x7f0200f7
    .end array-data

    .line 109
    :array_11
    .array-data 4
        0x6
        0x7
        0x3
        0x0
        0x9
        0xa
        0xa
        0x2
        0x0
        0x7
        0x0
        0x3
        0x5
        0x0
        0x0
        0x0
        0x4
        0x0
    .end array-data

    .line 115
    :array_12
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 139
    :array_13
    .array-data 4
        0x3f955555
        0x3f800000    # 1.0f
    .end array-data

    :array_14
    .array-data 4
        0x3f955555
        0x3f800000    # 1.0f
    .end array-data

    :array_15
    .array-data 4
        0x3f955555
        0x3f800000    # 1.0f
    .end array-data

    :array_16
    .array-data 4
        0x3f955555
        0x3f800000    # 1.0f
    .end array-data

    :array_17
    .array-data 4
        0x3f955555
        0x3f800000    # 1.0f
    .end array-data

    :array_18
    .array-data 4
        0x3feb851f    # 1.84f
        0x3fa8f5c3    # 1.32f
    .end array-data

    :array_19
    .array-data 4
        0x3f855555
        0x3f900000    # 1.125f
    .end array-data

    :array_1a
    .array-data 4
        0x3f900000    # 1.125f
        0x3fd55555
    .end array-data

    :array_1b
    .array-data 4
        0x3fbaaaab
        0x3f955555
    .end array-data

    :array_1c
    .array-data 4
        0x3fc00000    # 1.5f
        0x3fae147b    # 1.36f
    .end array-data

    :array_1d
    .array-data 4
        0x3f955555
        0x3fc00000    # 1.5f
    .end array-data

    :array_1e
    .array-data 4
        0x3f955555
        0x3fb00000    # 1.375f
    .end array-data

    :array_1f
    .array-data 4
        0x3f955555
        0x3fbaaaab
    .end array-data

    :array_20
    .array-data 4
        0x3f955555
        0x3fbaaaab
    .end array-data

    :array_21
    .array-data 4
        0x3f955555
        0x3fb55555
    .end array-data

    :array_22
    .array-data 4
        0x3f955555
        0x3faaaaab
    .end array-data

    :array_23
    .array-data 4
        0x3f955555
        0x3f800000    # 1.0f
    .end array-data

    :array_24
    .array-data 4
        0x3f955555
        0x3fbaaaab
    .end array-data

    .line 164
    :array_25
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ea3d70c    # 0.32000005f
        0x3e000000    # 0.125f
        0x3f2aaaaa
        0x3e2aaaa8
        0x3eb851ec    # 0.36f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
    .end array-data

    .line 183
    :array_26
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2b
    .array-data 4
        0x3e89d89e
        0x3e6c4ec5
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2d
    .array-data 4
        0x3e955555
        0x3f000000    # 0.5f
    .end array-data

    :array_2e
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_2f
    .array-data 4
        0x3f89d89e
        0x3f2e147b    # 0.68f
    .end array-data

    :array_30
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_31
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_34
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_35
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_36
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_37
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandomSkin()Lcom/wepie/snake/module/game/skin/SkinInfo;
    .locals 3

    .prologue
    .line 229
    sget-object v1, Lcom/wepie/snake/module/game/skin/SkinManager;->r:Ljava/util/Random;

    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 230
    .local v0, "index":I
    :goto_0
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/wepie/snake/helper/config/ConfigManager;->isSkinExist(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    sget-object v1, Lcom/wepie/snake/module/game/skin/SkinManager;->r:Ljava/util/Random;

    sget-object v2, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    goto :goto_0

    .line 233
    :cond_0
    sget-object v1, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/skin/SkinInfo;

    return-object v1
.end method

.method public static getSkin(I)Lcom/wepie/snake/module/game/skin/SkinInfo;
    .locals 2
    .param p0, "skin_id"    # I

    .prologue
    .line 219
    add-int/lit8 v0, p0, -0x1

    .line 220
    .local v0, "index":I
    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/wepie/snake/helper/config/ConfigManager;->isSkinExist(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 223
    :cond_0
    if-ltz v0, :cond_1

    sget-object v1, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 225
    :cond_2
    sget-object v1, Lcom/wepie/snake/module/game/skin/SkinManager;->skinArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/module/game/skin/SkinInfo;

    return-object v1
.end method
