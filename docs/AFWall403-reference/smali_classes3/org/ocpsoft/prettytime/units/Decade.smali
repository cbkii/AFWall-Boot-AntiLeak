.class public Lorg/ocpsoft/prettytime/units/Decade;
.super Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;
.source "Decade.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lorg/ocpsoft/prettytime/impl/ResourcesTimeUnit;-><init>()V

    const-wide v0, 0x497964c4e3L

    .line 25
    invoke-virtual {p0, v0, v1}, Lorg/ocpsoft/prettytime/units/Decade;->setMillisPerUnit(J)V

    return-void
.end method


# virtual methods
.method protected getResourceKeyPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Decade"

    return-object v0
.end method
