.class public abstract Lcom/chad/library/adapter/base/entity/SectionEntity;
.super Ljava/lang/Object;
.source "SectionEntity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public header:Ljava/lang/String;

.field public isHeader:Z

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/chad/library/adapter/base/entity/SectionEntity;, "Lcom/chad/library/adapter/base/entity/SectionEntity<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->header:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->t:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isHeader"    # Z
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    .line 11
    .local p0, "this":Lcom/chad/library/adapter/base/entity/SectionEntity;, "Lcom/chad/library/adapter/base/entity/SectionEntity<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->isHeader:Z

    .line 13
    iput-object p2, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->header:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chad/library/adapter/base/entity/SectionEntity;->t:Ljava/lang/Object;

    .line 15
    return-void
.end method
