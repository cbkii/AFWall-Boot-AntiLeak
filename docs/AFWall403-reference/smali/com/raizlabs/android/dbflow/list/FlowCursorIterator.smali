.class public Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;
.super Ljava/lang/Object;
.source "FlowCursorIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TModel:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "TTModel;>;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# instance fields
.field private count:J

.field private final cursorList:Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
            "TTModel;>;"
        }
    .end annotation
.end field

.field private reverseIndex:J

.field private startingCount:J


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
            "TTModel;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->getCount()J

    move-result-wide v1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
            "TTModel;>;I)V"
        }
    .end annotation

    .line 25
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->getCount()J

    move-result-wide v0

    int-to-long v2, p2

    sub-long/2addr v0, v2

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;-><init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;IJ)V

    return-void
.end method

.method public constructor <init>(Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator<",
            "TTModel;>;IJ)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->cursorList:Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;

    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    .line 32
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->cursor()Landroid/database/Cursor;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    .line 35
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-long v2, p4

    cmp-long p4, v0, v2

    if-lez p4, :cond_0

    .line 36
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result p4

    sub-int/2addr p4, p2

    int-to-long v0, p4

    iput-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    :cond_0
    add-int/lit8 p4, p2, -0x1

    .line 39
    invoke-interface {p3, p4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 40
    invoke-interface {p1}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->getCount()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->startingCount:J

    iget-wide p3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    int-to-long p1, p2

    sub-long/2addr p3, p1

    iput-wide p3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    if-gez v0, :cond_1

    iput-wide p1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    :cond_1
    return-void
.end method

.method private checkSizes()V
    .locals 5

    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->startingCount:J

    iget-object v2, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->cursorList:Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;

    .line 111
    invoke-interface {v2}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->getCount()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cannot change Cursor data during iteration."

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 57
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cursor Iterator: Cannot add a model in the iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->cursorList:Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;

    .line 52
    invoke-interface {v0}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->close()V

    return-void
.end method

.method public hasNext()Z
    .locals 5

    .line 62
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->checkSizes()V

    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 5

    .line 68
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->checkSizes()V

    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    iget-wide v2, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->checkSizes()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->cursorList:Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;

    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    iget-wide v3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    sub-long/2addr v1, v3

    .line 76
    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->getItem(J)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    const-wide/16 v3, 0x1

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    return-object v0
.end method

.method public nextIndex()I
    .locals 4

    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public previous()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTModel;"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->checkSizes()V

    iget-object v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->cursorList:Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;

    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->count:J

    iget-wide v3, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    sub-long/2addr v1, v3

    .line 90
    invoke-interface {v0, v1, v2}, Lcom/raizlabs/android/dbflow/list/IFlowCursorIterator;->getItem(J)Ljava/lang/Object;

    move-result-object v0

    iget-wide v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    iget-wide v0, p0, Lcom/raizlabs/android/dbflow/list/FlowCursorIterator;->reverseIndex:J

    long-to-int v1, v0

    return v1
.end method

.method public remove()V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cursor Iterator: cannot remove from an active Iterator "

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTModel;)V"
        }
    .end annotation

    .line 107
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cursor Iterator: cannot set on an active Iterator "

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
