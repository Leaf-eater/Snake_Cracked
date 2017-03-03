.class public Lcom/wepie/snake/module/game/nick/NickManager;
.super Ljava/lang/Object;
.source "NickManager.java"


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "nick_filter.a"

.field private static instance:Lcom/wepie/snake/module/game/nick/NickManager;


# instance fields
.field private filterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBan_word_version:I

.field private replace:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    .line 26
    const/16 v0, 0x48

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\t"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\n"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\r"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "`"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "~"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "!"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "@"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "#"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "$"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "%"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "^"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "&"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "*"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "("

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, ")"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "-"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "="

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "+"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "["

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "{"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "}"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\\"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "|"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, ":"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, ";"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\'"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\""

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, ","

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "<"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, ">"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "/"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "."

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "9"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "0"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/wepie/snake/module/game/nick/NickManager;->replace:[Ljava/lang/String;

    .line 37
    iput v3, p0, Lcom/wepie/snake/module/game/nick/NickManager;->mBan_word_version:I

    .line 40
    invoke-direct {p0}, Lcom/wepie/snake/module/game/nick/NickManager;->initLocalData()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/game/nick/NickManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/nick/NickManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/game/nick/NickManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/nick/NickManager;

    .prologue
    .line 22
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NickManager;->mBan_word_version:I

    return v0
.end method

.method static synthetic access$102(Lcom/wepie/snake/module/game/nick/NickManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/nick/NickManager;
    .param p1, "x1"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/wepie/snake/module/game/nick/NickManager;->mBan_word_version:I

    return p1
.end method

.method private checkNick(Ljava/lang/String;)Z
    .locals 6
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v3, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 79
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 80
    iget-object v3, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    .local v0, "filter":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    const-string v3, "999"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "----->NickManager \u68c0\u6d4b\u5230\u975e\u6cd5\u5b57\u7b26\uff1afilter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nick="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v3, 0x0

    .line 86
    .end local v0    # "filter":Ljava/lang/String;
    :goto_1
    return v3

    .line 79
    .restart local v0    # "filter":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "filter":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private checkReplace([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "replaceArray"    # [Ljava/lang/String;
    .param p2, "nick"    # Ljava/lang/String;

    .prologue
    .line 90
    move-object v1, p2

    .line 91
    .local v1, "tempNick":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 92
    aget-object v2, p1, v0

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    invoke-direct {p0, v1}, Lcom/wepie/snake/module/game/nick/NickManager;->checkNick(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public static getInstance()Lcom/wepie/snake/module/game/nick/NickManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/wepie/snake/module/game/nick/NickManager;->instance:Lcom/wepie/snake/module/game/nick/NickManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/wepie/snake/module/game/nick/NickManager;

    invoke-direct {v0}, Lcom/wepie/snake/module/game/nick/NickManager;-><init>()V

    sput-object v0, Lcom/wepie/snake/module/game/nick/NickManager;->instance:Lcom/wepie/snake/module/game/nick/NickManager;

    .line 47
    :cond_0
    sget-object v0, Lcom/wepie/snake/module/game/nick/NickManager;->instance:Lcom/wepie/snake/module/game/nick/NickManager;

    return-object v0
.end method

.method private initLocalData()V
    .locals 2

    .prologue
    .line 99
    const-string v1, "ban_word.a"

    invoke-static {v1}, Lcom/wepie/snake/module/util/FileCacheUtil;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "constJson":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/wepie/snake/module/game/nick/NickManager;->readAssetString()V

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/game/nick/NickManager;->parseFileCache(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseFileCache(Ljava/lang/String;)V
    .locals 4
    .param p1, "constJson"    # Ljava/lang/String;

    .prologue
    .line 128
    :try_start_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    .line 129
    .local v2, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 131
    .local v1, "object":Lcom/google/gson/JsonObject;
    new-instance v3, Lcom/wepie/snake/module/game/nick/NickManager$2;

    invoke-direct {v3, p0}, Lcom/wepie/snake/module/game/nick/NickManager$2;-><init>(Lcom/wepie/snake/module/game/nick/NickManager;)V

    invoke-static {v1, v3}, Lcom/wepie/snake/module/net/handler/BanWordsHandler;->parseBanWords(Lcom/google/gson/JsonObject;Lcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    .end local v2    # "parser":Lcom/google/gson/JsonParser;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private readAssetString()V
    .locals 12

    .prologue
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 110
    .local v6, "time":J
    :try_start_0
    invoke-static {}, Lcom/wepie/snake/base/SkApplication;->getInstance()Lcom/wepie/snake/base/SkApplication;

    move-result-object v2

    .line 111
    .local v2, "context":Landroid/content/Context;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "nick_filter.a"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 113
    .local v1, "br":Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .local v0, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "data":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 116
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "data":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 121
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v5, "999"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "----->NickManager readAssetString time="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " size="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 118
    .restart local v0    # "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v3    # "data":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 119
    iget-object v5, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public isNickValid(Ljava/lang/String;)Z
    .locals 6
    .param p1, "nick"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 70
    .local v0, "time":J
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/game/nick/NickManager;->checkNick(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/wepie/snake/module/game/nick/NickManager;->replace:[Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lcom/wepie/snake/module/game/nick/NickManager;->checkReplace([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const-string v2, "999"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----->NickManager isNickValid time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wepie/snake/module/game/nick/NickManager;->filterArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public updateBanWords()V
    .locals 2

    .prologue
    .line 51
    iget v0, p0, Lcom/wepie/snake/module/game/nick/NickManager;->mBan_word_version:I

    new-instance v1, Lcom/wepie/snake/module/game/nick/NickManager$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/game/nick/NickManager$1;-><init>(Lcom/wepie/snake/module/game/nick/NickManager;)V

    invoke-static {v0, v1}, Lcom/wepie/snake/module/net/api/ConfigApi;->getBanWords(ILcom/wepie/snake/module/net/handler/BanWordsHandler$BanWordsCallback;)V

    .line 66
    return-void
.end method
