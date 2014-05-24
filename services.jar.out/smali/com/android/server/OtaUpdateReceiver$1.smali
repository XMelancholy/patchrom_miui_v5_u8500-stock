.class Lcom/android/server/OtaUpdateReceiver$1;
.super Ljava/lang/Thread;
.source "OtaUpdateReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OtaUpdateReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OtaUpdateReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/OtaUpdateReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/server/OtaUpdateReceiver$1;->this$0:Lcom/android/server/OtaUpdateReceiver;

    iput-object p3, p0, Lcom/android/server/OtaUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/OtaUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OtaUpdateReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "ota_package_path"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, path:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, packageFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/OtaUpdateReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V

    .line 45
    const-string v3, "OtaUpdateReceiver"

    const-string v4, "Still running recovery update!"

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1           #packageFile:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/io/IOException;
    const-string v3, "OtaUpdateReceiver"

    const-string v4, "Can\'t perform update package"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
