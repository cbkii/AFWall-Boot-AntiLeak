.class public Lcom/stericson/roottools/internal/InternalVariables;
.super Ljava/lang/Object;
.source "InternalVariables.java"


# static fields
.field protected static final PS_REGEX:Ljava/lang/String; = "^\\S+\\s+([0-9]+).*$"

.field protected static busyboxVersion:Ljava/lang/String; = null

.field protected static found:Z = false

.field protected static getSpaceFor:Ljava/lang/String; = null

.field protected static inode:Ljava/lang/String; = ""

.field protected static mounts:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/stericson/roottools/containers/Mount;",
            ">;"
        }
    .end annotation
.end field

.field protected static nativeToolsReady:Z = false

.field protected static permissions:Lcom/stericson/roottools/containers/Permissions; = null

.field protected static pid_list:Ljava/lang/String; = ""

.field protected static processRunning:Z = false

.field protected static psPattern:Ljava/util/regex/Pattern;

.field protected static space:[Ljava/lang/String;

.field protected static symlinks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/stericson/roottools/containers/Symlink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\S+\\s+([0-9]+).*$"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/stericson/roottools/internal/InternalVariables;->psPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
