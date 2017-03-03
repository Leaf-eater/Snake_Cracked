.class public abstract Lcom/chad/library/adapter/base/entity/MultiItemEntity;
.super Ljava/lang/Object;
.source "MultiItemEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected itemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemType()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->itemType:I

    return v0
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "itemType"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/chad/library/adapter/base/entity/MultiItemEntity;->itemType:I

    .line 17
    return-void
.end method
