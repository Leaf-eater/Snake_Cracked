.class abstract Lrx/internal/util/unsafe/ConcurrentCircularArrayQueueL0Pad;
.super Ljava/util/AbstractQueue;
.source "ConcurrentCircularArrayQueue.java"

# interfaces
.implements Lrx/internal/util/unsafe/MessagePassingQueue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lrx/internal/util/unsafe/MessagePassingQueue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field p00:J

.field p01:J

.field p02:J

.field p03:J

.field p04:J

.field p05:J

.field p06:J

.field p07:J

.field p30:J

.field p31:J

.field p32:J

.field p33:J

.field p34:J

.field p35:J

.field p36:J

.field p37:J


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lrx/internal/util/unsafe/ConcurrentCircularArrayQueueL0Pad;, "Lrx/internal/util/unsafe/ConcurrentCircularArrayQueueL0Pad<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    return-void
.end method
