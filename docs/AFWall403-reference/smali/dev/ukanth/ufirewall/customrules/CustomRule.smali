.class public Ldev/ukanth/ufirewall/customrules/CustomRule;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "CustomRule.java"


# instance fields
.field private active:Z

.field id:J

.field private name:Ljava/lang/String;

.field private rule:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->name:Ljava/lang/String;

    iput-object p2, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->rule:Ljava/lang/String;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->timestamp:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRule()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->rule:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->timestamp:J

    return-wide v0
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->active:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->active:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->name:Ljava/lang/String;

    return-void
.end method

.method public setRule(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->rule:Ljava/lang/String;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    iput-wide p1, p0, Ldev/ukanth/ufirewall/customrules/CustomRule;->timestamp:J

    return-void
.end method
