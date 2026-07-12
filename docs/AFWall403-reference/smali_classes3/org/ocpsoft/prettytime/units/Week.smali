.class public Lorg/ocpsoft/prettytime/units/Week;
.super Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.source "Week.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    const-wide/32 v0, 0x240c8400

    .line 25
    invoke-virtual {p0, v0, v1}, Lorg/ocpsoft/prettytime/units/Week;->setMillisPerUnit(J)V

    return-void
.end method


# virtual methods
.method protected getResourceKeyPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Week"

    return-object v0
.end method
