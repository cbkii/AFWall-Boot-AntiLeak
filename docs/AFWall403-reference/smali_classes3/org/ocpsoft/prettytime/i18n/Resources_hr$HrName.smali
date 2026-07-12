.class Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;
.super Ljava/lang/Object;
.source "Resources_hr.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ocpsoft/prettytime/i18n/Resources_hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HrName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;",
        ">;"
    }
.end annotation


# instance fields
.field private final isFuture:Z

.field private final threshold:Ljava/lang/Long;

.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->isFuture:Z

    iput-object p2, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->value:Ljava/lang/String;

    iput-object p3, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->threshold:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 182
    check-cast p1, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;

    invoke-virtual {p0, p1}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->compareTo(Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;)I
    .locals 3

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->threshold:Ljava/lang/Long;

    .line 201
    invoke-virtual {p1}, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->getThreshold()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p1

    return p1
.end method

.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()J
    .locals 2

    iget-object v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->threshold:Ljava/lang/Long;

    .line 211
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isFuture()Z
    .locals 1

    iget-boolean v0, p0, Lorg/ocpsoft/prettytime/i18n/Resources_hr$HrName;->isFuture:Z

    return v0
.end method
