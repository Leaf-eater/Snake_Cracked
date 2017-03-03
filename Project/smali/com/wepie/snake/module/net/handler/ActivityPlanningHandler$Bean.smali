.class public Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler$Bean;
.super Ljava/lang/Object;
.source "ActivityPlanningHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/net/handler/ActivityPlanningHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Bean"
.end annotation


# static fields
.field public static final TYPE_COIN:I = 0x2

.field public static final TYPE_COIN_GAINED:I = 0x3

.field public static final TYPE_DEFAULT:I = 0x1


# instance fields
.field public activityId:I

.field public btnText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public coin:I

.field public imageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public type:I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
