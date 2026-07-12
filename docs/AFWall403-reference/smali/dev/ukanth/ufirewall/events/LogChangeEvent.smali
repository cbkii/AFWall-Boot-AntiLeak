.class public Ldev/ukanth/ufirewall/events/LogChangeEvent;
.super Ljava/lang/Object;
.source "LogChangeEvent.java"


# instance fields
.field public final ctx:Landroid/content/Context;

.field public final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/events/LogChangeEvent;->message:Ljava/lang/String;

    iput-object p2, p0, Ldev/ukanth/ufirewall/events/LogChangeEvent;->ctx:Landroid/content/Context;

    return-void
.end method
