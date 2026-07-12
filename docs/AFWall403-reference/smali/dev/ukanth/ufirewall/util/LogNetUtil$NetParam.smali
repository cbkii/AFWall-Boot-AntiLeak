.class public Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;
.super Ljava/lang/Object;
.source "LogNetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/util/LogNetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetParam"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public type:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;


# direct methods
.method public constructor <init>(Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->type:Ldev/ukanth/ufirewall/util/LogNetUtil$JobType;

    iput-object p2, p0, Ldev/ukanth/ufirewall/util/LogNetUtil$NetParam;->address:Ljava/lang/String;

    return-void
.end method
