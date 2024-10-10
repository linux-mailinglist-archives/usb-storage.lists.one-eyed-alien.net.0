Return-Path: <usb-storage+bncBCQPF57GUQHBBLMJT64AMGQET63SVUY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x147.google.com (mail-il1-x147.google.com [IPv6:2607:f8b0:4864:20::147])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EE3499859F
	for <lists+usb-storage@lfdr.de>; Thu, 10 Oct 2024 14:12:31 +0200 (CEST)
Received: by mail-il1-x147.google.com with SMTP id e9e14a558f8ab-3a392e9a8a4sf11183705ab.3
        for <lists+usb-storage@lfdr.de>; Thu, 10 Oct 2024 05:12:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1728562350; cv=pass;
        d=google.com; s=arc-20240605;
        b=d0GZsYxrkM4KZHcdLwkzkwfugQ01ZfCutUcHC9iqe8gLLdw1zAdJ6jaaQIVMBXk4ku
         qPOC+xYtFL69yVXHIfF4RzBLh/sXAOLosfiVhcmBd7btxe5V1vDhVHMVJ6FGxTeZo4eK
         OcssVXvSsewhIKB4k7oJrQFoePuE15BXJcldugT7i0egALOQLXZ2q+H9pyTSvLzHItIx
         Ase8eEAsXbVBoXOxY/2DbH+fAorjPB7I/TqbMCd+7DXYq8HCQZffgWtvH/Dxer88K/ZF
         3FEAi8iRKpN4UdItbWP4qfe/Qe+5fnC8CXv09yyas9XBEV5JWWBjG/aNCj3mXuFLQByg
         3N2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id:date
         :mime-version:sender:dkim-signature;
        bh=zdwnX8Wy4Vzj37nQGuyaWn3ahwXSDEitROq7IPxHsB4=;
        fh=FXAMj9L6b/aMYXvfCWGSO6peKOBNRZoS4nrqlcSWLtw=;
        b=U0Qz04UmUCVGENeD7XZPLl+qWd2ltOadWmLK9O6fWaNtXiaqHPwye83miKELZpCtDG
         Vx2Pm23boZ0DEUqhEZfroX1u14L+m3OiP2ucLLQiERBrVhGP8trm7NijxWzM3k/Kgd/c
         PT4vcRKwbXMY8L5aaVarDvVCl2DbUHfuv3QuR6X5INipPuonIDS+0vi1/JDwBCWIMI1F
         zTQ9VxZy0+jATIC4DoEi4OO83rBKxSFg9027S52BC854yNnF4UUXm5ec2cBeRbfIyFOC
         mIQ9yW0xfrWl8LviHH0UVYmhfI0vTkQ4Glu1gfG26Q6gveiIA7nR3Y5GeTrVRG75SEGk
         KGWA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3rmqhzwkbajmflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3rMQHZwkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1728562350; x=1729167150; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:date:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=zdwnX8Wy4Vzj37nQGuyaWn3ahwXSDEitROq7IPxHsB4=;
        b=Msq+juVWGNp0ijAb+dO/GdgTM9iYhVAT+bpIZJGvc5IwGxs1Ajzpbt0hxJcCylngoC
         Tz51Gg0pW67IldeHxAXmB2cJKbcLAHNvrcwQuFO6b9QW+yzuTiIaEgbjBgdzpD3j7xcX
         S1zxhcxqy5isPPBuQRvyelDyP7kvYGfi8vFrc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728562350; x=1729167150;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:date:mime-version:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zdwnX8Wy4Vzj37nQGuyaWn3ahwXSDEitROq7IPxHsB4=;
        b=f/7FbB9fAN7h9XbG9ZJwHWySaeyz26Wtd2+oQo1terKoZ8RHOnQqF0eLC6YRO1p/ek
         SDmAlTI4j37U5wpA+MWLgQ9mpD1kV7RR0ZT4wVNOd2JEyxBBxOSaBHSVIVugriWU/Ld7
         +vM/hXouB2V4xzaFG9cALwwcj+CKvFiYRWm4sNICplwpS1D2OJL/oRK5tfCP/U5APAiZ
         xBHgZOjxDFrLluToDuC4V6YpLu6bGt4OG3C1cXPTdiK9urs/Jd4pgVZzhilOwDxYJ5BG
         urrRoGhmgDLUnFDQVDy2iW8VIJpDzZ8tq3FrqUhPgigRNODijzWDc2Ga0xb83N22oWOM
         ovxQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVBtTSO4crk7dxAXpMnvPAbOFrNz9ntBOdIOA/NXjMHWEaDH2YaVFUkll/HAmXlzFIBP94Quw==@lfdr.de
X-Gm-Message-State: AOJu0YwqlSfj66mKa+Qb4BSx+HttN0WEEJBy7ViAIB8sxUYCVLIAsj80
	mgf99ls5nxdYe2l0j8hvqaDlc1fW1kZtf++lAqItJJ7Z9DVSurqptddNryoZaxk=
X-Google-Smtp-Source: AGHT+IGqLex0rzNd92S9SqpqDtWNO7T5Wga7r2xe/IhZ3C+S7i8fRk7veF5Ho3nBMviFf18OJOq/4g==
X-Received: by 2002:a05:6e02:1609:b0:3a0:92b1:ec4c with SMTP id e9e14a558f8ab-3a397d2c52amr62893845ab.23.1728562349813;
        Thu, 10 Oct 2024 05:12:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:1568:b0:3a0:cc84:9864 with SMTP id
 e9e14a558f8ab-3a3a7370213ls5372225ab.0.-pod-prod-05-us; Thu, 10 Oct 2024
 05:12:29 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX+DhqhX+92fMMRp8PEQpm8bg49/j6R0EKMSgmp9caDUpW3QiKM7Tee/gbOH0r68+7UoAH+YgtoPsXEnQ==@lists.one-eyed-alien.net
X-Received: by 2002:a92:c54f:0:b0:3a0:9cd5:931c with SMTP id e9e14a558f8ab-3a397d1d413mr58327865ab.20.1728562348819;
        Thu, 10 Oct 2024 05:12:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1728562348; cv=none;
        d=google.com; s=arc-20240605;
        b=gRx09G7TooYajFuKcG8n+/gIBQJVEzEBQE0M/YxaYLtCbPdAd8mdhMoFnj4D+z0UPL
         W6bbs/e2S8EKqnxlSe2Scl9BGbP0IM5nd6XPAWTELkiaRh46MnvgkMNM7DJI00WxRyYm
         1ogHWC75mfX2nu1l1vpL2zihUEUHWK6Kt1lNVJo/qdGD0SIC+rVsKAtBxRCW+yPgZFjN
         0U/Er362rcg/0Q+jP7BtBHicJ295LJ+ai1DIZF2OZw9tyEhlEQB3mDvbJPNe9afr4TdP
         fr4F88T+G8uzKcKH8MlGMC1YDZn4OE2NveHtS2zuasZMvLtvAi1xhcDdKx5hR2kP2ggD
         pPSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:from:subject:message-id:date:mime-version;
        bh=WZF5F3GUxEONm0J8MJb8DVmGnQqFHZ9yIYdvZ35VZOQ=;
        fh=SMieunPUrPZSn59O0Js/C9l+5s5YPoknKup9M0IFD9g=;
        b=Wc+e01OPeLFgGEJcVpeh6XH8pvYFhbquHdO78Uy3ts+Psi6dT986rIhXp+QTthQLGd
         Pzdet8gV8GVHst9M655+g+YB3C/Ua4rhGGk1PMYyRvgIZOaam7lLzIGcqbS7S+x9zpOT
         9v83HR1H+Yvm2xzQ3usX67sJ1Q5yOiHAZPgHulbuXVG0q85lHc9hAhl5LKzaYnpZ2JK8
         iYMjmYBWD8hnSUcXSUOyee/TTKQ4bDMqgs3t4gshvJodyrzJ+F057Zir9+EnEeBl1Dfr
         zRD8QxZcQv7vlD6LPSBWf9Cjt0cctoH7qrjCOaMEefUBRjRdKZJc06oBBSzy4wS8077p
         sxbg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3rmqhzwkbajmflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3rMQHZwkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id 8926c6da1cb9f-4dbadac4d43sor591322173.9.2024.10.10.05.12.28
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 10 Oct 2024 05:12:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rmqhzwkbajmflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
X-Forwarded-Encrypted: i=1; AJvYcCWKnkNpm0ltQz7SYjstjInIyrBCARrmkS2rvoZYdJhZDjyUUZ4jYp6jks4NJRrYqKX4Gu67amlrnUppCg==@lists.one-eyed-alien.net
MIME-Version: 1.0
X-Received: by 2002:a05:6e02:16c6:b0:3a0:8c5f:90c0 with SMTP id
 e9e14a558f8ab-3a397d09e66mr52964175ab.10.1728562348514; Thu, 10 Oct 2024
 05:12:28 -0700 (PDT)
Date: Thu, 10 Oct 2024 05:12:28 -0700
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <6707c4ac.050a0220.8109b.0006.GAE@google.com>
Subject: [usb-storage] [syzbot] [usb-storage?] INFO: task hung in usb_stor_disconnect
From: syzbot <syzbot+8b9cb14e5b04325684a9@syzkaller.appspotmail.com>
To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3rmqhzwkbajmflm7x881excc50.3bb381hf1ezbag1ag.zb9@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3rMQHZwkbAJMFLM7x881ExCC50.3BB381HF1EzBAG1AG.zB9@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

syzbot found the following issue on:

HEAD commit:    4a9fe2a8ac53 dt-bindings: usb: dwc3-imx8mp: add compatible..
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
console output: https://syzkaller.appspot.com/x/log.txt?x=12037380580000
kernel config:  https://syzkaller.appspot.com/x/.config?x=4510af5d637450fb
dashboard link: https://syzkaller.appspot.com/bug?extid=8b9cb14e5b04325684a9
compiler:       gcc (Debian 12.2.0-14) 12.2.0, GNU ld (GNU Binutils for Debian) 2.40

Unfortunately, I don't have any reproducer for this issue yet.

Downloadable assets:
disk image: https://storage.googleapis.com/syzbot-assets/883c5319cb52/disk-4a9fe2a8.raw.xz
vmlinux: https://storage.googleapis.com/syzbot-assets/caf4421ed2ef/vmlinux-4a9fe2a8.xz
kernel image: https://storage.googleapis.com/syzbot-assets/d8e3beb01d49/bzImage-4a9fe2a8.xz

IMPORTANT: if you fix the issue, please add the following tag to the commit:
Reported-by: syzbot+8b9cb14e5b04325684a9@syzkaller.appspotmail.com

INFO: task kworker/1:5:4942 blocked for more than 143 seconds.
      Not tainted 6.12.0-rc1-syzkaller-00027-g4a9fe2a8ac53 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:kworker/1:5     state:D stack:22096 pid:4942  tgid:4942  ppid:2      flags:0x00004000
Workqueue: usb_hub_wq hub_event
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5315 [inline]
 __schedule+0x105f/0x34b0 kernel/sched/core.c:6675
 __schedule_loop kernel/sched/core.c:6752 [inline]
 schedule+0xe7/0x350 kernel/sched/core.c:6767
 schedule_timeout+0x258/0x2a0 kernel/time/timer.c:2591
 do_wait_for_common kernel/sched/completion.c:95 [inline]
 __wait_for_common+0x3e1/0x600 kernel/sched/completion.c:116
 __flush_work+0x776/0xc30 kernel/workqueue.c:4217
 __cancel_work_sync+0x10c/0x130 kernel/workqueue.c:4337
 quiesce_and_remove_host drivers/usb/storage/usb.c:939 [inline]
 usb_stor_disconnect+0xc5/0x270 drivers/usb/storage/usb.c:1178
 usb_unbind_interface+0x1e8/0x970 drivers/usb/core/driver.c:461
 device_remove drivers/base/dd.c:569 [inline]
 device_remove+0x122/0x170 drivers/base/dd.c:561
 __device_release_driver drivers/base/dd.c:1273 [inline]
 device_release_driver_internal+0x44a/0x610 drivers/base/dd.c:1296
 bus_remove_device+0x22f/0x420 drivers/base/bus.c:576
 device_del+0x396/0x9f0 drivers/base/core.c:3864
 usb_disable_device+0x36c/0x7f0 drivers/usb/core/message.c:1418
 usb_disconnect+0x2e1/0x920 drivers/usb/core/hub.c:2304
 hub_port_connect drivers/usb/core/hub.c:5361 [inline]
 hub_port_connect_change drivers/usb/core/hub.c:5661 [inline]
 port_event drivers/usb/core/hub.c:5821 [inline]
 hub_event+0x1bed/0x4f40 drivers/usb/core/hub.c:5903
 process_one_work+0x9c5/0x1ba0 kernel/workqueue.c:3229
 process_scheduled_works kernel/workqueue.c:3310 [inline]
 worker_thread+0x6c8/0xf00 kernel/workqueue.c:3391
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
INFO: task kworker/0:4:4957 blocked for more than 143 seconds.
      Not tainted 6.12.0-rc1-syzkaller-00027-g4a9fe2a8ac53 #0
"echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
task:kworker/0:4     state:D stack:21456 pid:4957  tgid:4957  ppid:2      flags:0x00004000
Workqueue: events_freezable usb_stor_scan_dwork
Call Trace:
 <TASK>
 context_switch kernel/sched/core.c:5315 [inline]
 __schedule+0x105f/0x34b0 kernel/sched/core.c:6675
 __schedule_loop kernel/sched/core.c:6752 [inline]
 schedule+0xe7/0x350 kernel/sched/core.c:6767
 blk_mq_freeze_queue_wait+0x146/0x190 block/blk-mq.c:139
 blk_freeze_queue block/blk-mq.c:166 [inline]
 blk_mq_freeze_queue block/blk-mq.c:175 [inline]
 blk_mq_update_tag_set_shared+0xba/0x160 block/blk-mq.c:4035
 blk_mq_add_queue_tag_set block/blk-mq.c:4069 [inline]
 blk_mq_init_allocated_queue+0xd59/0x11f0 block/blk-mq.c:4343
 blk_mq_alloc_queue+0x1f8/0x2f0 block/blk-mq.c:4158
 scsi_alloc_sdev+0x897/0xd90 drivers/scsi/scsi_scan.c:337
 scsi_probe_and_add_lun+0x525/0x7b0 drivers/scsi/scsi_scan.c:1210
 scsi_sequential_lun_scan drivers/scsi/scsi_scan.c:1393 [inline]
 __scsi_scan_target+0x42c/0x4e0 drivers/scsi/scsi_scan.c:1764
 scsi_scan_channel drivers/scsi/scsi_scan.c:1845 [inline]
 scsi_scan_channel+0x149/0x1e0 drivers/scsi/scsi_scan.c:1821
 scsi_scan_host_selected+0x2ae/0x370 drivers/scsi/scsi_scan.c:1874
 do_scsi_scan_host+0x1ef/0x260 drivers/scsi/scsi_scan.c:2013
 scsi_scan_host drivers/scsi/scsi_scan.c:2043 [inline]
 scsi_scan_host+0x3a7/0x440 drivers/scsi/scsi_scan.c:2031
 usb_stor_scan_dwork+0xad/0x280 drivers/usb/storage/usb.c:998
 process_one_work+0x9c5/0x1ba0 kernel/workqueue.c:3229
 process_scheduled_works kernel/workqueue.c:3310 [inline]
 worker_thread+0x6c8/0xf00 kernel/workqueue.c:3391
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>

Showing all locks held in the system:
1 lock held by khungtaskd/30:
 #0: ffffffff88ebb100 (rcu_read_lock){....}-{1:2}, at: rcu_lock_acquire include/linux/rcupdate.h:337 [inline]
 #0: ffffffff88ebb100 (rcu_read_lock){....}-{1:2}, at: rcu_read_lock include/linux/rcupdate.h:849 [inline]
 #0: ffffffff88ebb100 (rcu_read_lock){....}-{1:2}, at: debug_show_all_locks+0x7f/0x390 kernel/locking/lockdep.c:6720
4 locks held by kworker/u8:3/46:
 #0: ffff888100abf948 ((wq_completion)async){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc90000517d80 ((work_completion)(&entry->work)){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
 #2: ffff888111f36378 (&dev->mutex){....}-{3:3}, at: device_lock include/linux/device.h:1014 [inline]
 #2: ffff888111f36378 (&dev->mutex){....}-{3:3}, at: __device_attach_async_helper+0x84/0x290 drivers/base/dd.c:973
 #3: ffff888105fb4688 (&q->limits_lock){+.+.}-{3:3}, at: queue_limits_start_update include/linux/blkdev.h:926 [inline]
 #3: ffff888105fb4688 (&q->limits_lock){+.+.}-{3:3}, at: sd_revalidate_disk.isra.0+0x27a/0xa420 drivers/scsi/sd.c:3727
3 locks held by kworker/1:2/800:
 #0: ffff888100080948 ((wq_completion)events){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc90001c0fd80 (free_ipc_work){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
 #2: ffffffff88ec6a78 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock+0x282/0x3b0 kernel/rcu/tree_exp.h:297
2 locks held by kworker/u8:5/1175:
 #0: ffff88811b950948 ((wq_completion)scsi_tmf_1){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc9000253fd80 ((work_completion)(&(&cmd->abort_work)->work)){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
2 locks held by getty/2604:
 #0: ffff888113be10a0 (&tty->ldisc_sem){++++}-{0:0}, at: tty_ldisc_ref_wait+0x24/0x80 drivers/tty/tty_ldisc.c:243
 #1: ffffc900000432f0 (&ldata->atomic_read_lock){+.+.}-{3:3}, at: n_tty_read+0xfba/0x1480 drivers/tty/n_tty.c:2211
3 locks held by kworker/0:2/4915:
 #0: ffff888105adf548 ((wq_completion)usb_hub_wq){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc90001fbfd80 ((work_completion)(&hub->events)){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
 #2: ffff888109f5a190 (&dev->mutex){....}-{3:3}, at: device_lock include/linux/device.h:1014 [inline]
 #2: ffff888109f5a190 (&dev->mutex){....}-{3:3}, at: hub_event+0x1be/0x4f40 drivers/usb/core/hub.c:5849
2 locks held by udevd/4933:
 #0: ffff8881f583d6d8 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock_nested kernel/sched/core.c:593 [inline]
 #0: ffff8881f583d6d8 (&rq->__lock){-.-.}-{2:2}, at: raw_spin_rq_lock kernel/sched/sched.h:1505 [inline]
 #0: ffff8881f583d6d8 (&rq->__lock){-.-.}-{2:2}, at: rq_lock kernel/sched/sched.h:1804 [inline]
 #0: ffff8881f583d6d8 (&rq->__lock){-.-.}-{2:2}, at: __schedule+0x293/0x34b0 kernel/sched/core.c:6575
 #1: ffff8881120e4d58 (&ep->lock){....}-{2:2}, at: ep_done_scan+0x2e/0x590 fs/eventpoll.c:726
5 locks held by kworker/1:5/4942:
 #0: ffff888105adf548 ((wq_completion)usb_hub_wq){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc9000252fd80 ((work_completion)(&hub->events)){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
 #2: ffff888109b68190 (&dev->mutex){....}-{3:3}, at: device_lock include/linux/device.h:1014 [inline]
 #2: ffff888109b68190 (&dev->mutex){....}-{3:3}, at: hub_event+0x1be/0x4f40 drivers/usb/core/hub.c:5849
 #3: ffff888117769190 (&dev->mutex){....}-{3:3}, at: device_lock include/linux/device.h:1014 [inline]
 #3: ffff888117769190 (&dev->mutex){....}-{3:3}, at: usb_disconnect+0x10a/0x920 drivers/usb/core/hub.c:2295
 #4: ffff88811b123160 (&dev->mutex){....}-{3:3}, at: device_lock include/linux/device.h:1014 [inline]
 #4: ffff88811b123160 (&dev->mutex){....}-{3:3}, at: __device_driver_lock drivers/base/dd.c:1095 [inline]
 #4: ffff88811b123160 (&dev->mutex){....}-{3:3}, at: device_release_driver_internal+0xa4/0x610 drivers/base/dd.c:1293
4 locks held by kworker/0:4/4957:
 #0: ffff888100081548 ((wq_completion)events_freezable){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc90001f4fd80 ((work_completion)(&(&us->scan_dwork)->work)){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
 #2: ffff888111db80e0 (&shost->scan_mutex){+.+.}-{3:3}, at: scsi_scan_host_selected+0x160/0x370 drivers/scsi/scsi_scan.c:1866
 #3: ffff888111db82d0 (&set->tag_list_lock){+.+.}-{3:3}, at: blk_mq_add_queue_tag_set block/blk-mq.c:4060 [inline]
 #3: ffff888111db82d0 (&set->tag_list_lock){+.+.}-{3:3}, at: blk_mq_init_allocated_queue+0x7bc/0x11f0 block/blk-mq.c:4343
1 lock held by usb-storage/9821:
 #0: ffff888111db8d08 (&us_interface_key[i]){+.+.}-{3:3}, at: usb_stor_control_thread+0xd6/0xac0 drivers/usb/storage/usb.c:394
4 locks held by kworker/u8:4/10837:
 #0: ffff888100abb148 ((wq_completion)netns){+.+.}-{0:0}, at: process_one_work+0x129b/0x1ba0 kernel/workqueue.c:3204
 #1: ffffc9000f707d80 (net_cleanup_work){+.+.}-{0:0}, at: process_one_work+0x921/0x1ba0 kernel/workqueue.c:3205
 #2: ffffffff8a18c450 (pernet_ops_rwsem){++++}-{3:3}, at: cleanup_net+0xbb/0xb40 net/core/net_namespace.c:580
 #3: ffffffff8a1a1d68 (rtnl_mutex){+.+.}-{3:3}, at: cleanup_net+0x503/0xb40 net/core/net_namespace.c:616
1 lock held by syz.1.1772/11741:
 #0: ffffffff88ec6a78 (rcu_state.exp_mutex){+.+.}-{3:3}, at: exp_funnel_lock+0x1a4/0x3b0 kernel/rcu/tree_exp.h:329

=============================================

NMI backtrace for cpu 1
CPU: 1 UID: 0 PID: 30 Comm: khungtaskd Not tainted 6.12.0-rc1-syzkaller-00027-g4a9fe2a8ac53 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Call Trace:
 <TASK>
 __dump_stack lib/dump_stack.c:94 [inline]
 dump_stack_lvl+0x116/0x1f0 lib/dump_stack.c:120
 nmi_cpu_backtrace+0x27b/0x390 lib/nmi_backtrace.c:113
 nmi_trigger_cpumask_backtrace+0x29c/0x300 lib/nmi_backtrace.c:62
 trigger_all_cpu_backtrace include/linux/nmi.h:162 [inline]
 check_hung_uninterruptible_tasks kernel/hung_task.c:223 [inline]
 watchdog+0xf0c/0x1240 kernel/hung_task.c:379
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>
Sending NMI from CPU 1 to CPUs 0:
NMI backtrace for cpu 0
CPU: 0 UID: 0 PID: 4931 Comm: kworker/0:3 Not tainted 6.12.0-rc1-syzkaller-00027-g4a9fe2a8ac53 #0
Hardware name: Google Google Compute Engine/Google Compute Engine, BIOS Google 09/13/2024
Workqueue: events drain_vmap_area_work
RIP: 0010:bytes_is_nonzero mm/kasan/generic.c:86 [inline]
RIP: 0010:memory_is_nonzero mm/kasan/generic.c:104 [inline]
RIP: 0010:memory_is_poisoned_n mm/kasan/generic.c:129 [inline]
RIP: 0010:memory_is_poisoned mm/kasan/generic.c:161 [inline]
RIP: 0010:check_region_inline mm/kasan/generic.c:180 [inline]
RIP: 0010:kasan_check_range+0xfb/0x1a0 mm/kasan/generic.c:189
Code: d2 74 1e 41 83 e2 07 49 39 d1 75 0a 45 3a 11 b8 01 00 00 00 7c 0b 44 89 c2 e8 11 eb ff ff 83 f0 01 5b 5d 41 5c c3 cc cc cc cc <48> 85 d2 74 4f 48 01 ea eb 09 48 83 c0 01 48 39 d0 74 41 80 38 00
RSP: 0018:ffffc90000007bd0 EFLAGS: 00000083
RAX: fffffbfff1f55db4 RBX: fffffbfff1f55db5 RCX: ffffffff813260ce
RDX: 0000000000000001 RSI: 0000000000000008 RDI: ffffffff8faaeda0
RBP: fffffbfff1f55db4 R08: 0000000000000000 R09: fffffbfff1f55db4
R10: ffffffff8faaeda7 R11: 0000000000000000 R12: 0000000000000000
R13: ffff88811e23e2f8 R14: 000000000000004f R15: ffff88811e23d7c0
FS:  0000000000000000(0000) GS:ffff8881f5800000(0000) knlGS:0000000000000000
CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
CR2: 00007f2add4eff0c CR3: 0000000105e80000 CR4: 00000000003506f0
DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
Call Trace:
 <NMI>
 </NMI>
 <IRQ>
 instrument_atomic_read include/linux/instrumented.h:68 [inline]
 _test_bit include/asm-generic/bitops/instrumented-non-atomic.h:141 [inline]
 hlock_class+0x4e/0x130 kernel/locking/lockdep.c:228
 __lock_acquire+0x1443/0x3ce0 kernel/locking/lockdep.c:5198
 lock_acquire.part.0+0x11b/0x380 kernel/locking/lockdep.c:5825
 seqcount_lockdep_reader_access include/linux/seqlock.h:72 [inline]
 timekeeping_debug_get_ns+0x86/0x5b0 kernel/time/timekeeping.c:256
 timekeeping_get_ns kernel/time/timekeeping.c:401 [inline]
 ktime_get+0xd9/0x1a0 kernel/time/timekeeping.c:850
 clockevents_program_event+0x155/0x380 kernel/time/clockevents.c:326
 tick_program_event+0xa9/0x140 kernel/time/tick-oneshot.c:44
 hrtimer_interrupt+0x36d/0x800 kernel/time/hrtimer.c:1830
 local_apic_timer_interrupt arch/x86/kernel/apic/apic.c:1026 [inline]
 __sysvec_apic_timer_interrupt+0x10f/0x450 arch/x86/kernel/apic/apic.c:1043
 instr_sysvec_apic_timer_interrupt arch/x86/kernel/apic/apic.c:1037 [inline]
 sysvec_apic_timer_interrupt+0x8b/0xb0 arch/x86/kernel/apic/apic.c:1037
 </IRQ>
 <TASK>
 asm_sysvec_apic_timer_interrupt+0x1a/0x20 arch/x86/include/asm/idtentry.h:702
RIP: 0010:__kasan_poison_pages+0x0/0x40 mm/kasan/common.c:139
Code: 00 00 b8 01 00 00 00 c3 cc cc cc cc 66 66 2e 0f 1f 84 00 00 00 00 00 0f 1f 00 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 90 <66> 0f 1f 00 48 b8 00 00 00 00 00 16 00 00 89 f1 0f b6 d2 48 01 c7
RSP: 0018:ffffc900024bf9b0 EFLAGS: 00000246
RAX: 0000000000000000 RBX: 0000000000000000 RCX: 0000000000000000
RDX: 0000000000000000 RSI: 0000000000000000 RDI: ffffea0004e6dec0
RBP: 0000000000139b7b R08: 0000000000000001 R09: fffffbfff1f55db4
R10: ffffffff8faaeda7 R11: 0000000000000000 R12: 0000000000000001
R13: ffffea0004e6dec0 R14: 0000000000000000 R15: 0000000000001000
 kasan_poison_pages include/linux/kasan.h:114 [inline]
 free_pages_prepare mm/page_alloc.c:1130 [inline]
 free_unref_page+0x1e2/0xb50 mm/page_alloc.c:2638
 kasan_depopulate_vmalloc_pte+0x63/0x80 mm/kasan/shadow.c:408
 apply_to_pte_range mm/memory.c:2817 [inline]
 apply_to_pmd_range mm/memory.c:2861 [inline]
 apply_to_pud_range mm/memory.c:2897 [inline]
 apply_to_p4d_range mm/memory.c:2933 [inline]
 __apply_to_page_range+0x5fd/0xd30 mm/memory.c:2967
 kasan_release_vmalloc+0xac/0xc0 mm/kasan/shadow.c:525
 purge_vmap_node+0x3fb/0x930 mm/vmalloc.c:2204
 __purge_vmap_area_lazy+0x9c5/0xc00 mm/vmalloc.c:2288
 drain_vmap_area_work+0x27/0x40 mm/vmalloc.c:2322
 process_one_work+0x9c5/0x1ba0 kernel/workqueue.c:3229
 process_scheduled_works kernel/workqueue.c:3310 [inline]
 worker_thread+0x6c8/0xf00 kernel/workqueue.c:3391
 kthread+0x2c1/0x3a0 kernel/kthread.c:389
 ret_from_fork+0x45/0x80 arch/x86/kernel/process.c:147
 ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
 </TASK>


---
This report is generated by a bot. It may contain errors.
See https://goo.gl/tpsmEJ for more information about syzbot.
syzbot engineers can be reached at syzkaller@googlegroups.com.

syzbot will keep track of this issue. See:
https://goo.gl/tpsmEJ#status for how to communicate with syzbot.

If the report is already addressed, let syzbot know by replying with:
#syz fix: exact-commit-title

If you want to overwrite report's subsystems, reply with:
#syz set subsystems: new-subsystem
(See the list of subsystem names on the web dashboard)

If the report is a duplicate of another one, reply with:
#syz dup: exact-subject-of-another-report

If you want to undo deduplication, reply with:
#syz undup

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/6707c4ac.050a0220.8109b.0006.GAE%40google.com.
