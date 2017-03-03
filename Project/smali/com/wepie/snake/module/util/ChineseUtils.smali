.class public Lcom/wepie/snake/module/util/ChineseUtils;
.super Ljava/lang/Object;
.source "ChineseUtils.java"


# static fields
.field private static random:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/wepie/snake/module/util/ChineseUtils;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChinese()Ljava/lang/String;
    .locals 9

    .prologue
    .line 22
    const/4 v5, 0x0

    .line 24
    .local v5, "str":Ljava/lang/String;
    invoke-static {}, Lcom/wepie/snake/module/util/ChineseUtils;->getRandomInstance()Ljava/util/Random;

    move-result-object v4

    .line 25
    .local v4, "random":Ljava/util/Random;
    const/16 v7, 0x27

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit16 v2, v7, 0xb0

    .line 26
    .local v2, "highPos":I
    const/16 v7, 0x5d

    invoke-virtual {v4, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit16 v3, v7, 0xa1

    .line 27
    .local v3, "lowPos":I
    const/4 v7, 0x2

    new-array v0, v7, [B

    .line 28
    .local v0, "b":[B
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v8

    aput-byte v8, v0, v7

    .line 29
    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->byteValue()B

    move-result v8

    aput-byte v8, v0, v7

    .line 31
    :try_start_0
    new-instance v6, Ljava/lang/String;

    const-string v7, "GB2312"

    invoke-direct {v6, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "str":Ljava/lang/String;
    .local v6, "str":Ljava/lang/String;
    move-object v5, v6

    .line 35
    .end local v6    # "str":Ljava/lang/String;
    .restart local v5    # "str":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 32
    :catch_0
    move-exception v1

    .line 33
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFixedLengthChinese(I)Ljava/lang/String;
    .locals 4
    .param p0, "length"    # I

    .prologue
    .line 39
    const-string v1, ""

    .line 40
    .local v1, "str":Ljava/lang/String;
    move v0, p0

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/wepie/snake/module/util/ChineseUtils;->getChinese()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 43
    :cond_0
    return-object v1
.end method

.method private static getRandomInstance()Ljava/util/Random;
    .locals 4

    .prologue
    .line 15
    sget-object v0, Lcom/wepie/snake/module/util/ChineseUtils;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Ljava/util/Random;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/wepie/snake/module/util/ChineseUtils;->random:Ljava/util/Random;

    .line 18
    :cond_0
    sget-object v0, Lcom/wepie/snake/module/util/ChineseUtils;->random:Ljava/util/Random;

    return-object v0
.end method

.method public static getRandomLengthChiness(II)Ljava/lang/String;
    .locals 5
    .param p0, "start"    # I
    .param p1, "end"    # I

    .prologue
    .line 47
    const-string v2, ""

    .line 48
    .local v2, "str":Ljava/lang/String;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 49
    .local v1, "length":I
    if-ge v1, p0, :cond_1

    .line 50
    invoke-static {p0, p1}, Lcom/wepie/snake/module/util/ChineseUtils;->getRandomLengthChiness(II)Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_0
    return-object v2

    .line 52
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/wepie/snake/module/util/ChineseUtils;->getChinese()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/wepie/snake/module/util/ChineseUtils;->getChinese()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v1, 0x14

    invoke-static {v1}, Lcom/wepie/snake/module/util/ChineseUtils;->getFixedLengthChinese(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 62
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/wepie/snake/module/util/ChineseUtils;->getRandomLengthChiness(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    return-void
.end method
