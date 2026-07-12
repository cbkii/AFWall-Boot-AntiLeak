.class public final synthetic Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field public final synthetic f$0:Ldev/ukanth/ufirewall/util/FileDialog;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ldev/ukanth/ufirewall/util/FileDialog;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;->f$0:Ldev/ukanth/ufirewall/util/FileDialog;

    iput-boolean p2, p0, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;->f$0:Ldev/ukanth/ufirewall/util/FileDialog;

    iget-boolean v1, p0, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;->f$1:Z

    invoke-static {v0, v1, p1, p2}, Ldev/ukanth/ufirewall/util/FileDialog;->$r8$lambda$H4zB7gSmLNJfe_IxgnqCuTiZ4qw(Ldev/ukanth/ufirewall/util/FileDialog;ZLjava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
