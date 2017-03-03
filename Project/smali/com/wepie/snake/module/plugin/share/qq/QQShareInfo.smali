.class public Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;
.super Ljava/lang/Object;
.source "QQShareInfo.java"


# instance fields
.field public icon_url:Ljava/lang/String;

.field public imageArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isShare2Qzone:Z

.field public link_url:Ljava/lang/String;

.field public qq_id:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/plugin/share/qq/QQShareInfo;->imageArray:Ljava/util/ArrayList;

    return-void
.end method
