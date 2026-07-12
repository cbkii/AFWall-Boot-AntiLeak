.class public Lorg/ocpsoft/prettytime/units/JustNow;
.super Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.source "JustNow.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    const-wide/32 v0, 0xea60

    .line 25
    invoke-virtual {p0, v0, v1}, Lorg/ocpsoft/prettytime/units/JustNow;->setMaxQuantity(J)V

    return-void
.end method


# virtual methods
.method protected getResourceKeyPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "JustNow"

    return-object v0
.end method

.method public isPrecise()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
