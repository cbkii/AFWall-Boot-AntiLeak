.class public Ldev/ukanth/ufirewall/events/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# instance fields
.field public final ctx:Landroid/content/Context;

.field public final logInfo:Ldev/ukanth/ufirewall/log/LogInfo;


# direct methods
.method public constructor <init>(Ldev/ukanth/ufirewall/log/LogInfo;Landroid/content/Context;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/events/LogEvent;->logInfo:Ldev/ukanth/ufirewall/log/LogInfo;

    iput-object p2, p0, Ldev/ukanth/ufirewall/events/LogEvent;->ctx:Landroid/content/Context;

    return-void
.end method
