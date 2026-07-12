.class public abstract Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.super Ljava/lang/Object;
.source "ResourcesTimeUnit.java"

# interfaces
.implements Lorg/ocpsoft/prettytime/TimeUnit;


# static fields
.field private static ID:J


# instance fields
.field private id:J

.field private maxQuantity:J

.field private millisPerUnit:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    sget-wide v2, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->ID:J

    add-long/2addr v0, v2

    sput-wide v0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->ID:J

    iput-wide v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->id:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 98
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 100
    :cond_2
    check-cast p1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;

    iget-wide v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    .line 101
    iget-wide v4, p1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    .line 103
    iget-wide v4, p1, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxQuantity()J
    .locals 2

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    return-wide v0
.end method

.method public getMillisPerUnit()J
    .locals 2

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    return-wide v0
.end method

.method protected final getResourceBundleName()Ljava/lang/String;
    .locals 1

    const-string v0, "org.ocpsoft.prettytime.i18n.Resources"

    return-object v0
.end method

.method protected abstract getResourceKeyPrefix()Ljava/lang/String;
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->id:J

    .line 87
    invoke-static {v0, v1}, Lkotlin/UByte$$ExternalSyntheticBackport0;->m(J)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isPrecise()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setMaxQuantity(J)V
    .locals 0

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->maxQuantity:J

    return-void
.end method

.method public setMillisPerUnit(J)V
    .locals 0

    iput-wide p1, p0, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->millisPerUnit:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-virtual {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;->getResourceKeyPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
