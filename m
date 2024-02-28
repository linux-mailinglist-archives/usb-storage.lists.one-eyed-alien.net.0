Return-Path: <usb-storage+bncBCQPF57GUQHBBBEF7OXAMGQEBUEMUBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-il1-x148.google.com (mail-il1-x148.google.com [IPv6:2607:f8b0:4864:20::148])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DB2D86A7EA
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 06:20:06 +0100 (CET)
Received: by mail-il1-x148.google.com with SMTP id e9e14a558f8ab-3653092aee9sf44253515ab.0
        for <lists+usb-storage@lfdr.de>; Tue, 27 Feb 2024 21:20:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709097604; cv=pass;
        d=google.com; s=arc-20160816;
        b=GZrCzptWaQYYG5Y7DXm10Z615aoKYbJ3uZKD9zSQeogGzI78mSvcJgIf7F+gE5HiPd
         VGC/FdOdCx88Uh9LSIQDHNcBlWosq6pkV1JdXZWE8z/VuphqGJrQz8fLzpQVOyDhFkxM
         NZlCC8Tr2EofuX9rNnjqR7cjBUq9AIaWDg+Tv5ZRrjSa/a3OPgzP+sMOSIzM/UkI5RnL
         FGMzq3+M2hm7lgcS9Q84xbE6ihWOFtflWjshIJCteXKvUhIdGlXI3JLAKXg3e8Z0Vaqc
         WPLRBAm6QPGbC7exg0Kv5V5RUP9vLSmkNqETTvEi+3DCPFB3LDhXdLOUVKInIzU+iso4
         7ovw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:from:subject:message-id
         :in-reply-to:date:mime-version:sender:dkim-signature;
        bh=ZUrVr+Wd2e/B20TUda3v3G8af/xT37ylu9Oc91errKE=;
        fh=PR22E6PvemHX0t4JXFtzfPSdDYrX6IUjCWsc6vwSDrc=;
        b=tE1qLFmCMieSkEkcv+6Y6t2k+6x8ZpVAIj/8GyWJNlT/t0fEFssnDTwydU4ALIMRUP
         sD8EWxNY6hL7N7XckQpIlpWZFLY6rgtf62Rkr6NPS8WYGG5Va8FydzyDhmxSEeO4beWy
         3AOBVowufur7XJxpziu6jCi3Ax/ASCOqYs4XAg8oQw1DiSe8bCjbHNDfUOXFSKp32GWR
         fxi2pm41U1GhvofEbu0nassVvrwbrd5oYFegMYsHslFWKFaf7Ff/xjTAptK77SgsmDD5
         Ak+H6WkSURh3RJOuK7sIlZtWZRDfgmb7FLKfqMt3Crwh8c8gAEV1WAB6ICh4JKR/OK+q
         kZaA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of 3g8lezqkbalgqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3g8LeZQkbALgqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709097604; x=1709702404; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:to:from:subject:message-id:in-reply-to:date
         :mime-version:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ZUrVr+Wd2e/B20TUda3v3G8af/xT37ylu9Oc91errKE=;
        b=lkFz8kvYUkLlzVeY4yqirNZotSLL3NjlYFaZ58NkLyXdIOfwK3r65oDRB0HNdE1DEn
         W5J1LqOhVh/30DHgHNYkrZVqZE6e3pIuaV0CNZflUOdMbG1DDvxJqn4VNQIm79tGig+x
         rPjGkyCTltBRE3G5CY5BDhkEU7sdDVHZg557k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709097604; x=1709702404;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:to:from:subject
         :message-id:in-reply-to:date:mime-version:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZUrVr+Wd2e/B20TUda3v3G8af/xT37ylu9Oc91errKE=;
        b=blEOq667BmDCGSZEPGSkEwpDic9ZGkRKHOVcFq3lMERST3nHlBbXO5GxHKwiXi5BDM
         cnESUWGAvApFCVN3XJbS4v6nQ/hu4c+0oCHUStHH+TLOOrz7JsgVqaEagXCbminwx6VK
         AQNXB1w52GK0rBxtoyZa2qvRl2Z7gz3NtICyWpyU5eWuh3vB/Ev0uJczRuKyPx2GyoFH
         Bnn0s5Q2UJYkHgorE1tjmkt3xQb6vOVM0W5l3Hw0vgPFrc2SCk/uKA7e9xop3Po20wDc
         sHGFF4QWdYCJ6gasRVbnBtiimScMbm37xBe+DAjZE16EnMB0IKAGkxrDp9MzDcaJgCuh
         /qUA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUF0E9YPbU8tYUG6aruhOrf5vAfsZCAY/9qZniym0LFxCopr8YuWWrjJt67Ne47mvQoG3IDaVrroa77swP8a0DGP0JJfHYWzggV
X-Gm-Message-State: AOJu0Ywt5ZVQfEiwPfyHpcfJhsIdebWB3DyxZtHNzLzK+NuBXseKWVq6
	UxTDy/2PPnRO8Zu74fQCUOrksfktYQxum9ZEyzPPx/1w+LLIKVfFe2JV5dfLmU4=
X-Google-Smtp-Source: AGHT+IGBZglr70igWMIfdqocTpmdkrFV8N4o1numJc+WSN8m9IyJq+gh1fSjlNQ0GsWt0LXuB/YnIg==
X-Received: by 2002:a92:d1c4:0:b0:365:23c5:1bef with SMTP id u4-20020a92d1c4000000b0036523c51befmr12738732ilg.2.1709097604667;
        Tue, 27 Feb 2024 21:20:04 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6e02:f05:b0:363:d634:8954 with SMTP id
 x5-20020a056e020f0500b00363d6348954ls2477517ilj.2.-pod-prod-06-us; Tue, 27
 Feb 2024 21:20:04 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUeXKHp2jl+Z+RgOqAAhLuhug68vVWUPcVIKOGzMxFAW5rw6/xhnHBftrXtY9GVYgvf0WAfDuG9//D3bzNmRP9y2a5SEeZ6QenI3sBuqHd747ixaug=
X-Received: by 2002:a6b:3e0a:0:b0:7c7:2ac4:967a with SMTP id l10-20020a6b3e0a000000b007c72ac4967amr12838433ioa.7.1709097603695;
        Tue, 27 Feb 2024 21:20:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709097603; cv=none;
        d=google.com; s=arc-20160816;
        b=qwfbBCtZbTYD8MaqmjsL+YA5T19N7dVDjaTmV5W6WxNrWH/6PjhGi4PwSzmEOi6fBd
         9sg5LUsJ2PF4+Qm6v69mLlhZtYpZauMYnY6qJTpmkVAh/Al9J6ndh9zUzyZhrhqmNfsN
         GOvTvpBbjNDFdi7AIpDCT7xyYUfqJJzytiBGk9DmIjSD1SbjDFxps/fizLnC4UPB3fGi
         oV2Cc4FCaUjc/ePTU65r3c6aOx/whNxRhuszyrWqRNH1cM9o3aRVoCVAWqAibh7PkFfY
         WhTUszac+sJZSgiGjRTefZ9qTnRzYnT7cGPR6FaLACjUwWyw4EkQQyi395hBLf0hpZ0U
         pzhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:from:subject:message-id:in-reply-to:date:mime-version;
        bh=dv6V2O6lQg2n9LZQBOk1bc2tXIQJwFPskMBoRcLDz5g=;
        fh=TGMp7jl8NoV78lToxngpvYVkxm9EeNZsnIS8qvaVkRA=;
        b=yJMziYNWaPQawTj28yHW5IYtt+KL/MC70HmLlloLGxnt+/h7zDLcxn+y8wHW0oaur/
         N8qpxtouDLVXUn74r+z1ufjLALlLpXK1fZYDJlz/IGbISR12Q1AHb5RCMCdjlRbYlJLE
         V8ew0EKteJ9rJdgZwbmiv7lzsNl7W88Mt3okh06rb+mQ+bh6gRT5m4slfXh5YfLvcsXv
         Rjvf9E0nZFv0/WdoBVt6t2tPFiDUq+BBTGnvS4IIjJLk2uFhHICzeC4Oy4COQdxQhODC
         NcYjz8YNcV4QeQaGw7xULFUAXZfVI/eZtixdeg700M19ZFtL89dS6e0tkjFuqCYFTtMc
         DAMw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of 3g8lezqkbalgqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) smtp.mailfrom=3g8LeZQkbALgqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=appspotmail.com
Received: from mail-sor-f69.google.com (mail-sor-f69.google.com. [209.85.220.69])
        by mx.google.com with SMTPS id q185-20020a6b2ac2000000b007c7aae6e272sor192596ioq.5.2024.02.27.21.20.03
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 27 Feb 2024 21:20:03 -0800 (PST)
Received-SPF: pass (google.com: domain of 3g8lezqkbalgqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com designates 209.85.220.69 as permitted sender) client-ip=209.85.220.69;
X-Forwarded-Encrypted: i=1; AJvYcCWGbSrbz17IfijI+CSNVbHAjSqkBZx5y53CTMCh5BArqbr6KAMZBVDMjdPicClRQN5Uwvv1je9qe4klIeTks8mHepWQiKMCY9rXzDMSNxQZ96XZA0k=
MIME-Version: 1.0
X-Received: by 2002:a5e:de02:0:b0:7c7:96ac:9408 with SMTP id
 e2-20020a5ede02000000b007c796ac9408mr18782iok.0.1709097603496; Tue, 27 Feb
 2024 21:20:03 -0800 (PST)
Date: Tue, 27 Feb 2024 21:20:03 -0800
In-Reply-To: <8fe3f46c-4ee5-4597-bf2d-12a5d634a264@rowland.harvard.edu>
X-Google-Appengine-App-Id: s~syzkaller
Message-ID: <0000000000008b026406126a4bbe@google.com>
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
From: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>
To: bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	martin.petersen@oracle.com, stern@rowland.harvard.edu, 
	syzkaller-bugs@googlegroups.com, tasos@tasossah.com, 
	usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: syzbot@syzkaller.appspotmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of 3g8lezqkbalgqwxiyjjcpynngb.emmejcsqcpamlrclr.amk@m3kw2wvrgufz5godrsrytgd7.apphosting.bounces.google.com
 designates 209.85.220.69 as permitted sender) smtp.mailfrom=3g8LeZQkbALgqwxiYjjcpYnngb.emmejcsqcpamlrclr.amk@M3KW2WVRGUFZ5GODRSRYTGD7.apphosting.bounces.google.com;
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

syzbot tried to test the proposed patch but the build/boot failed:

failed to checkout kernel repo https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ on commit f2e367d6ad3b: failed to run ["git" "fetch" "--force" "--tags" "7b440d1b40dd93ea98b5af6bba55ffca63425216" "f2e367d6ad3b"]: exit status 128
fatal: couldn't find remote ref f2e367d6ad3b



Tested on:

commit:         [unknown 
git tree:       https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/ f2e367d6ad3b
kernel config:  https://syzkaller.appspot.com/x/.config?x=eff9f3183d0a20dd
dashboard link: https://syzkaller.appspot.com/bug?extid=28748250ab47a8f04100
compiler:       
patch:          https://syzkaller.appspot.com/x/patch.diff?x=14296a74180000

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0000000000008b026406126a4bbe%40google.com.
