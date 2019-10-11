Return-Path: <usb-storage+bncBCQPF57GUQHBBEN5QLWQKGQETDI3NWY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd45.google.com (mail-io1-xd45.google.com [IPv6:2607:f8b0:4864:20::d45])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F40FD440F
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 17:24:03 +0200 (CEST)
Received: by mail-io1-xd45.google.com with SMTP id k14sf15131100iot.14
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 08:24:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570807442; cv=pass;
        d=google.com; s=arc-20160816;
        b=TBYck7mLq5nBIT0aJv2YX8bcIljJo9TmPbIvOWzy+bWFvAuV+31hv3NEqjz8WYFppF
         WZ/4qp6/5LCQ9ygkAXwr20XFP+MM+u23feYXNNFQD+ysryjsUoZnfV88RyTQZtw4dTtj
         vnEXafUXuB2c9gmcerR/mhz/LazdHUqKEqWq4VzUMOnH3L00t41Q8Kpr/lS42bOWSw3/
         l98XurOCDqPy114dTIAFcDRyioGQ7ivYUEaWluH6tZBZPzQPfQo6+8SYZi7jFrTFul1p
         yFYDejCdIBIOBjhLqywrcydrYaQ9dqhkJQLgmmzu1w4VKriMIvdS6B9Tu0tFkrfNXIyx
         Q2Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=gRZJGb2dn6EeuDzmkCFp4UMq1ekcZXfok/oMiP2FCao=;
        b=gGQVvJF4IIqqh3AXtOuc0MNMVZJOr4s3swu0TJnno1cMw6qvHXUjqjFxIa3AzGR9xH
         xPZH7EFUVozsrMNnqEEkV29NXMbLa0TkIxZWUcsqcmVu2p8DN/7xMt7T1qvJlKpFyScD
         9kpVZ6X+7eiggRYBcgExR49d0neIvUtG0QNlvO0P0bj54OcCf6jkwI4qxYkpUoLba9xE
         zXgGkCn4eHXqN7XGfejQzToCTu8UQ8jsrMOvTXNXc3IhXSP2QlOMEHc6n9HCgssWiii9
         wsCXH6HdByP/iG8WYdQaGxbrW9tNFqpkntnUw0oyGy3ccNVQXv2uL/M5sZAMhFWBSTRx
         H6Jg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3kz6gxqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3kZ6gXQkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:date:in-reply-to:message-id:subject:from:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gRZJGb2dn6EeuDzmkCFp4UMq1ekcZXfok/oMiP2FCao=;
        b=VYC/NArr0CGEAYRm2Fr8z6BFicqd33A2sbhkrJgZOQND8UtQ0WAiIE2HJ5aWMXJm36
         CQD1VLk376HlzQk2n2CMQXhiAlNUnTIUB169rt3t+UFVzvyLokdoOXjA7JxLxkmfREv1
         Gb6vFu+sZvpCZ87xANo0nS+uYYfec/vTAzSnE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:in-reply-to:message-id
         :subject:from:to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gRZJGb2dn6EeuDzmkCFp4UMq1ekcZXfok/oMiP2FCao=;
        b=PaHeHgcQR2eiVkuNQkOJfw1IWRvJR6KlkudOCqlM6VyO3dI/hCsQbC1IN4qqQnVvDq
         x70sdx7nT8Nx2RiPcTGPIy+4XVsuf9ycD+oIikRJG8D5jsEREEBFNj0VF6P7llZdpNrE
         //VecQfi+2d9yY3c3cs20p6AFZsNO/OaYzPxMl1YLYIvtcQJOL1krDfnufOCXh4cZhMK
         zNHQ14Ah/TmxG1UHWg37NPr5L36qsthVEgkkKbcjPoAJimytdNUj9aUaVAHuBEZpBtxB
         +yQmyGbXfWvceCdmm5leGTmvhfiE/JUXslnb9oUpzjwzd/gn/URP9Zi3MrJg4gemZsis
         Ryag==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVFy7sfJdM73AaGLAuvEsQZsg6r3EKHlnxY4Z964D/n9Uizt+OI
	It7oPgezd6a265apTq5KBZL4Lw==
X-Google-Smtp-Source: APXvYqzurpWDGqF3aDcggsE/VhDVSN7yCeMbInboCbKA7qCzoVM//4VNSw9U89vOjuxQk5xOKAu1rA==
X-Received: by 2002:a05:6602:25c2:: with SMTP id d2mr4348826iop.219.1570807441948;
        Fri, 11 Oct 2019 08:24:01 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a5d:9309:: with SMTP id l9ls2227466ion.3.gmail; Fri, 11 Oct
 2019 08:24:01 -0700 (PDT)
X-Received: by 2002:a5d:9284:: with SMTP id s4mr2279481iom.38.1570807441419;
        Fri, 11 Oct 2019 08:24:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570807441; cv=none;
        d=google.com; s=arc-20160816;
        b=dGprYrIZ6Is2CsBz9imhk1IaRAWnID+sftHhfdjAlTQAIdHutERqhVeZsYaAZ4+Msk
         IwEZiiyzfX99pTo3d3+IDCcHzRCy9+57BKTEmpcIjVgT+S8Ad+4GrjmMEMFwEtRhlZks
         40eHomO51QXd2X/bLrThVGBSf3vDHmfM6a/dgG9qnjouw7IrlnDmzA0Sr4zodSdLwRsf
         eg0KH/hqotQ8d27No1NcDGzeHlHndIkqrN/PbootuofMj/Sp1RSrb5aN/SwcckKT6JiX
         INtOTqcV7LGa/Z5gg3+ehdy817KV+f3eNmiaWcfci33EjnA2Zt6y/j8P8A8nhsAMtCOM
         bUDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=M2Zk83UHjuHOijfJsrKFxRFCeO8Fg9AWHxC+LcAN1hg=;
        b=EmpmNmX7GSrTNYPGSRAl16VYSf67pFIOkG5FSXITq9gZ0/Cu90cyhFYr3DhlR+CChH
         B8LDqi462H6t/cg6dMoaX+TMzocq5W+7bouFwIzuLYO53oVZH/+gzJazIKIOeU+hTxJW
         0IoYSQy6IWIEJbXdUeBrbgLRgcltQ706EuNDGkGEJ0FiP8vl+Exhxl6v6hsb8uJAlbq0
         P4xMwVvyYdTE7WfmHTxcwBLwhDkCSHkKl1tRgjqORhATo5D71ytNxJXvkX0/vBx0ml9m
         RJ8Am5DSEFW9NP2Mavir9bWjxr9e2w31dGgqeW03xSGP0/5zvyNg3W2w0/cqwBpjA8s6
         9TQQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3kz6gxqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3kZ6gXQkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id g4sor7398146ion.46.2019.10.11.08.24.01
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 08:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kz6gxqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
MIME-Version: 1.0
X-Received: by 2002:a5e:8819:: with SMTP id l25mr24986ioj.18.1570807441129;
 Fri, 11 Oct 2019 08:24:01 -0700 (PDT)
Date: Fri, 11 Oct 2019 08:24:01 -0700
In-Reply-To: <b8b1e4fef9f3ece63909c38b3302621d76770caa.camel@gmail.com>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000008a083f0594a41bf1@google.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
From: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>
To: glider@google.com, gregkh@linuxfoundation.org, 
	jaskaransingh7654321@gmail.com, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"; format=flowed; delsp=yes
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3kz6gxqkbaeqy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3kZ6gXQkbAEQy45qgrrkxgvvoj.muumrk0ykxiutzktz.ius@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>

Hello,

syzbot has tested the proposed patch but the reproducer still triggered  
crash:
KMSAN: uninit-value in sd_revalidate_disk

=====================================================
BUG: KMSAN: uninit-value in check_disk_change+0x423/0x4b0  
fs/block_dev.c:1499
CPU: 1 PID: 23508 Comm: scsi_id Not tainted 5.3.0-rc7+ #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS  
Google 01/01/2011
Call Trace:
  __dump_stack lib/dump_stack.c:77 [inline]
  dump_stack+0x191/0x1f0 lib/dump_stack.c:113
  kmsan_report+0x13a/0x2b0 mm/kmsan/kmsan_report.c:108
  __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
  media_not_present drivers/scsi/sd.c:1527 [inline]
  sd_spinup_disk drivers/scsi/sd.c:2096 [inline]
  sd_revalidate_disk+0x4d2/0xbef0 drivers/scsi/sd.c:3114
  check_disk_change+0x423/0x4b0 fs/block_dev.c:1499
  sd_open+0x471/0x8e0 drivers/scsi/sd.c:1356
  __blkdev_get+0x4a8/0x2480 fs/block_dev.c:1569
  blkdev_get+0x228/0x6d0 fs/block_dev.c:1707
  blkdev_open+0x36b/0x490 fs/block_dev.c:1846
  do_dentry_open+0xda7/0x1810 fs/open.c:797
  vfs_open+0xaf/0xe0 fs/open.c:906
  do_last fs/namei.c:3416 [inline]
  path_openat+0x17f4/0x6bb0 fs/namei.c:3533
  do_filp_open+0x2b8/0x710 fs/namei.c:3563
  do_sys_open+0x642/0xa30 fs/open.c:1089
  __do_sys_open fs/open.c:1107 [inline]
  __se_sys_open+0xad/0xc0 fs/open.c:1102
  __x64_sys_open+0x4a/0x70 fs/open.c:1102
  do_syscall_64+0xbc/0xf0 arch/x86/entry/common.c:297
  entry_SYSCALL_64_after_hwframe+0x63/0xe7
RIP: 0033:0x7f7c9e529120
Code: 48 8b 15 1b 4d 2b 00 f7 d8 64 89 02 83 c8 ff c3 90 90 90 90 90 90 90  
90 90 90 83 3d d5 a4 2b 00 00 75 10 b8 02 00 00 00 0f 05 <48> 3d 01 f0 ff  
ff 73 31 c3 48 83 ec 08 e8 5e 8c 01 00 48 89 04 24
RSP: 002b:00007fff97dee0a8 EFLAGS: 00000246 ORIG_RAX: 0000000000000002
RAX: ffffffffffffffda RBX: 00007fff97dee5c0 RCX: 00007f7c9e529120
RDX: 00007fff97dee3c0 RSI: 0000000000000800 RDI: 00007fff97dee3c0
RBP: 00000000017ac010 R08: 0000000000000000 R09: 0000000000000000
R10: 0000000000000000 R11: 0000000000000246 R12: 00007fff97dee5c0
R13: 00007fff97dee3c0 R14: 00000000017ac010 R15: 0000000000000000

Local variable description: ----sshdr.i@sd_revalidate_disk
Variable was created at:
  sd_spinup_disk drivers/scsi/sd.c:3108 [inline]
  sd_revalidate_disk+0x2d3/0xbef0 drivers/scsi/sd.c:3114
  check_disk_change+0x423/0x4b0 fs/block_dev.c:1499
=====================================================


Tested on:

commit:         1e76a3e5 kmsan: replace __GFP_NO_KMSAN_SHADOW with kmsan_i..
git tree:       https://github.com/google/kmsan.git
console output: https://syzkaller.appspot.com/x/log.txt?x=144fd0a0e00000
kernel config:  https://syzkaller.appspot.com/x/.config?x=f03c659d0830ab8d
dashboard link: https://syzkaller.appspot.com/bug?extid=e7d46eb426883fb97efd
compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
80fee25776c2fb61e74c1ecb1a523375c2500b69)
patch:          https://syzkaller.appspot.com/x/patch.diff?x=110434ab600000

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0000000000008a083f0594a41bf1%40google.com.
