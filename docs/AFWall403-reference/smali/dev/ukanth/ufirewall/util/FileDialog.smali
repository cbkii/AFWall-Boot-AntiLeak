.class public Ldev/ukanth/ufirewall/util/FileDialog;
.super Ljava/lang/Object;
.source "FileDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;,
        Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;
    }
.end annotation


# static fields
.field private static final PARENT_DIR:Ljava/lang/String; = ".."


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private currentPath:Ljava/io/File;

.field private final dirListenerList:Ldev/ukanth/ufirewall/util/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldev/ukanth/ufirewall/util/ListenerList<",
            "Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private fileList:[Ljava/lang/String;

.field private final fileListenerList:Ldev/ukanth/ufirewall/util/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldev/ukanth/ufirewall/util/ListenerList<",
            "Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private flag:Z

.field private selectDirectoryOption:Z


# direct methods
.method public static synthetic $r8$lambda$EY0jNQLysYPxTWroc-sbTP3IbrE(Ldev/ukanth/ufirewall/util/FileDialog;Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ldev/ukanth/ufirewall/util/FileDialog;->lambda$createFileDialog$0(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H4zB7gSmLNJfe_IxgnqCuTiZ4qw(Ldev/ukanth/ufirewall/util/FileDialog;ZLjava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ldev/ukanth/ufirewall/util/FileDialog;->lambda$loadFileList$4(ZLjava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$mH1fx0HivrU4T1wPC6VEBPC-3tc(Ldev/ukanth/ufirewall/util/FileDialog;Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Ldev/ukanth/ufirewall/util/FileDialog;->lambda$createFileDialog$1(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/io/File;Z)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->TAG:Ljava/lang/String;

    .line 41
    new-instance v0, Ldev/ukanth/ufirewall/util/ListenerList;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/util/ListenerList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 42
    new-instance v0, Ldev/ukanth/ufirewall/util/ListenerList;

    invoke-direct {v0}, Ldev/ukanth/ufirewall/util/ListenerList;-><init>()V

    iput-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->dirListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->activity:Landroid/app/Activity;

    .line 54
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    .line 55
    :cond_0
    invoke-virtual {p0, p3}, Ldev/ukanth/ufirewall/util/FileDialog;->setFlag(Z)V

    .line 56
    invoke-direct {p0, p2, p3}, Ldev/ukanth/ufirewall/util/FileDialog;->loadFileList(Ljava/io/File;Z)V

    return-void
.end method

.method private fireDirectorySelectedEvent(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->dirListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 148
    new-instance v1, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda4;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/ListenerList;->fireEvent(Ldev/ukanth/ufirewall/util/ListenerList$FireHandler;)V

    return-void
.end method

.method private fireFileSelectedEvent(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 144
    new-instance v1, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Ldev/ukanth/ufirewall/util/ListenerList;->fireEvent(Ldev/ukanth/ufirewall/util/ListenerList$FireHandler;)V

    return-void
.end method

.method private getChosenFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, ".."

    .line 247
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    return-object p1

    .line 250
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private synthetic lambda$createFileDialog$0(Lcom/afollestad/materialdialogs/MaterialDialog;Lcom/afollestad/materialdialogs/DialogAction;)V
    .locals 0

    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    .line 79
    invoke-direct {p0, p1}, Ldev/ukanth/ufirewall/util/FileDialog;->fireDirectorySelectedEvent(Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$createFileDialog$1(Lcom/afollestad/materialdialogs/MaterialDialog;Landroid/view/View;ILjava/lang/CharSequence;)V
    .locals 0

    :try_start_0
    iget-object p2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileList:[Ljava/lang/String;

    .line 85
    aget-object p2, p2, p3

    .line 86
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/util/FileDialog;->getChosenFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Ldev/ukanth/ufirewall/util/FileDialog;->flag:Z

    .line 88
    invoke-direct {p0, p2, p3}, Ldev/ukanth/ufirewall/util/FileDialog;->loadFileList(Ljava/io/File;Z)V

    .line 89
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->cancel()V

    .line 90
    invoke-virtual {p1}, Lcom/afollestad/materialdialogs/MaterialDialog;->dismiss()V

    .line 91
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FileDialog;->showDialog()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 92
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 93
    invoke-direct {p0, p2}, Ldev/ukanth/ufirewall/util/FileDialog;->fireFileSelectedEvent(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->TAG:Ljava/lang/String;

    const-string p3, "Error in file selection callback"

    .line 96
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic lambda$fireDirectorySelectedEvent$3(Ljava/io/File;Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;)V
    .locals 0

    .line 148
    invoke-interface {p1, p0}, Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;->directorySelected(Ljava/io/File;)V

    return-void
.end method

.method static synthetic lambda$fireFileSelectedEvent$2(Ljava/io/File;Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;)V
    .locals 0

    .line 144
    invoke-interface {p1, p0}, Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;->fileSelected(Ljava/io/File;)V

    return-void
.end method

.method private synthetic lambda$loadFileList$4(ZLjava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    iget-boolean p2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->selectDirectoryOption:Z

    if-eqz p2, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1

    :cond_1
    if-eqz p1, :cond_2

    const-string p1, "[a-z]+.json"

    .line 164
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 165
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "[a-z]+-[a-z]+-\\d+-\\S*"

    .line 167
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 168
    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 169
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_2
    const-string p1, "[a-z]+_[a-z]+.json"

    .line 171
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 172
    invoke-virtual {p1, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, "[a-z]+-[a-z]+-[a-z]+-\\d+-\\S*"

    .line 174
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 175
    invoke-virtual {p2, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 176
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 178
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    :goto_0
    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private loadFileList(Ljava/io/File;Z)V
    .locals 9

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, ".."

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    new-instance v1, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda0;-><init>(Ldev/ukanth/ufirewall/util/FileDialog;Z)V

    .line 181
    invoke-virtual {p1, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 183
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    .line 187
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 188
    array-length v2, p1

    if-lez v2, :cond_6

    .line 189
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    aget-object v4, p1, v3

    .line 190
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz p2, :cond_3

    const-string v7, "[a-z]+.json"

    .line 193
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 194
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "[a-z]+-[a-z]+-\\d+-\\S*"

    .line 196
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 197
    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 198
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const-string v7, "[a-z]+_[a-z]+.json"

    .line 200
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 201
    invoke-virtual {v7, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "[a-z]+-[a-z]+-[a-z]+-\\d+-\\S*"

    .line 203
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 204
    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 205
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 207
    :cond_4
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v6, :cond_5

    .line 208
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_7

    new-array p1, v1, [Ljava/lang/String;

    .line 239
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileList:[Ljava/lang/String;

    :cond_7
    return-void
.end method


# virtual methods
.method public addDirectoryListener(Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->dirListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 123
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/ListenerList;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addFileListener(Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 111
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/ListenerList;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public createFileDialog()Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x0

    .line 68
    :try_start_0
    new-instance v1, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->currentPath:Ljava/io/File;

    .line 75
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->title(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    iget-boolean v2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->selectDirectoryOption:Z

    if-eqz v2, :cond_0

    .line 77
    sget v2, Ldev/ukanth/ufirewall/R$string;->select_dir:I

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->positiveText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 78
    sget v2, Ldev/ukanth/ufirewall/R$string;->Cancel:I

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->negativeText(I)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 79
    new-instance v2, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda2;-><init>(Ldev/ukanth/ufirewall/util/FileDialog;)V

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->onPositive(Lcom/afollestad/materialdialogs/MaterialDialog$SingleButtonCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    :cond_0
    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileList:[Ljava/lang/String;

    .line 82
    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->items([Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 83
    new-instance v2, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Ldev/ukanth/ufirewall/util/FileDialog$$ExternalSyntheticLambda3;-><init>(Ldev/ukanth/ufirewall/util/FileDialog;)V

    invoke-virtual {v1, v2}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->itemsCallback(Lcom/afollestad/materialdialogs/MaterialDialog$ListCallback;)Lcom/afollestad/materialdialogs/MaterialDialog$Builder;

    .line 101
    :try_start_1
    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog$Builder;->show()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->TAG:Ljava/lang/String;

    const-string v3, "MaterialDialog.show() failed due to Android compatibility issue"

    .line 103
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    iget-object v2, p0, Ldev/ukanth/ufirewall/util/FileDialog;->TAG:Ljava/lang/String;

    const-string v3, "MaterialDialog.Builder failed due to Android compatibility issue"

    .line 70
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public removeDirectoryListener(Ldev/ukanth/ufirewall/util/FileDialog$DirectorySelectedListener;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->dirListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 127
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/ListenerList;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeFileListener(Ldev/ukanth/ufirewall/util/FileDialog$FileSelectedListener;)V
    .locals 1

    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->fileListenerList:Ldev/ukanth/ufirewall/util/ListenerList;

    .line 115
    invoke-virtual {v0, p1}, Ldev/ukanth/ufirewall/util/ListenerList;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public setFlag(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->flag:Z

    return-void
.end method

.method public setSelectDirectoryOption(Z)V
    .locals 0

    iput-boolean p1, p0, Ldev/ukanth/ufirewall/util/FileDialog;->selectDirectoryOption:Z

    return-void
.end method

.method public showDialog()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Ldev/ukanth/ufirewall/util/FileDialog;->createFileDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldev/ukanth/ufirewall/util/FileDialog;->TAG:Ljava/lang/String;

    const-string v1, "Cannot show file dialog due to MaterialDialog compatibility issue"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
