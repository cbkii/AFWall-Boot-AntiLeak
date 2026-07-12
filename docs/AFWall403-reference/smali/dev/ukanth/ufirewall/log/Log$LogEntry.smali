.class public Ldev/ukanth/ufirewall/log/Log$LogEntry;
.super Ljava/lang/Object;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldev/ukanth/ufirewall/log/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEntry"
.end annotation


# instance fields
.field level:I

.field msg:Ljava/lang/String;

.field timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ldev/ukanth/ufirewall/log/Log$LogEntry;->msg:Ljava/lang/String;

    return-void
.end method
