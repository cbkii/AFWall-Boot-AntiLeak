.class public final synthetic Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ldev/ukanth/ufirewall/util/ListenerList$FireHandler;


# instance fields
.field public final synthetic f$0:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final fireEvent(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda1;->f$0:Ljava/io/File;

    check-cast p1, Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;

    invoke-static {v0, p1}, Ldev/ukanth/ufirewall/util/FileDialog;->lambda$fireFileSelectedEvent$2(Ljava/io/File;Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;)V

    return-void
.end method
