.class public Lorg/ocpsoft/prettytime/impl/DurationImpl;
.super Ljava/lang/Object;
.source "DurationImpl.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/Duration;


# instance fields
.field private delta:J

.field private quantity:J

.field private unit:Lorg/ocpsoft/prettytime/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    return v0

    .line 118
    :cond_2
    check-cast p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;

    iget-wide v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    .line 119
    iget-wide v3, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    return v0

    :cond_3
    iget-wide v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 121
    iget-wide v3, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    .line 123
    iget-object p1, p1, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getDelta()J
    .locals 2

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    return-wide v0
.end method

.method public getQuantity()J
    .locals 2

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    return-wide v0
.end method

.method public getQuantityRounded(I)J
    .locals 7

    .line 78
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 80
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getDelta()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 83
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getDelta()J

    move-result-wide v2

    long-to-double v2, v2

    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getUnit()Lorg/ocpsoft/prettytime/TimeUnit;

    move-result-object v4

    invoke-interface {v4}, Lorg/ocpsoft/prettytime/TimeUnit;->getMillisPerUnit()J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    int-to-double v4, p1

    cmpl-double p1, v2, v4

    if-lez p1, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getUnit()Lorg/ocpsoft/prettytime/TimeUnit;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    .line 103
    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    .line 104
    invoke-static {v2, v3}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    .line 105
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isInFuture()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->isInPast()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isInPast()Z
    .locals 5

    .line 66
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/DurationImpl;->getQuantity()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDelta(J)V
    .locals 0

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    return-void
.end method

.method public setQuantity(J)V
    .locals 0

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    return-void
.end method

.method public setUnit(Lorg/ocpsoft/prettytime/TimeUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DurationImpl ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->quantity:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->unit:Lorg/ocpsoft/prettytime/TimeUnit;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", delta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/ocpsoft/prettytime/impl/DurationImpl;->delta:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
