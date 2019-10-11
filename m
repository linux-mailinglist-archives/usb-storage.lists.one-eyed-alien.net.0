Return-Path: <usb-storage+bncBDX4HWEMTEBRBTU6QLWQKGQEMQ4XOPY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 8773FD4293
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 16:18:56 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id x35sf6171955pgk.1
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 07:18:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570803535; cv=pass;
        d=google.com; s=arc-20160816;
        b=xvQ3WpU3LOTPJCGDsJPXcTUlt2vMj3KeoHnH79V8eiGTiB1It4XZKbU3G6acfmIN5r
         q9/rVDu6bLi0B1c3qA0H99aB4D4tEube/tSvJrT84WmNgIKL4KpUWnIM2G8mY70X9pIP
         PNv9cMk0cOY8D2ghNBXOP8gCTn0+0xAur1agSuejfCzCIOFaTyMriluaq7mrccCk31m0
         I6Q+G41Wwu+HXj1ouRlqSER3xa6PGS8cLlEp1b+LkcFSr0ie8VaxI2kbq/ORhKaXPzyr
         yNej0+opaLyQkGKLaue/oX6akzXnAdfmtHETKaYLjb9qo3+UlUve1Va12O1j9Qpu+GVI
         lC5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=3NpkwMyz0JFoVQg8tXYxFyWiNbzYoqG4vU3vU7lst+Y=;
        b=nmowTdv7jN0S782+VlEQpPzbxgVsKFWAM8yLev4iKf8Y5SlluWqUX7oUVn1yCaCD4N
         wEJ2P0B22y22cp4CYx1302LytdNmRrYarQcW0VO84v7rcW/MNv9BlTskBQ/xOsTBbOp2
         P1Ofjo8Cd5rj7cU0FS6M8TZmRWvRJW0CcZyd0pBNunM78rTbX3sR7OrescGxL8OFUeAe
         r9TzNaaWMOKu3M6EJ2Vpjin/sGVe0Hi8cgRk5awaMANxe1l/XmuZjcAk/5kIzpMNhu0b
         HI9AjfMmmEWsATtB/WvUgSZX1Yk5DoHfpVI3xo10xLTISvDiJpCNwkd/ut7H6wlYfvGQ
         WU7w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s2PJBxVJ;
       spf=pass (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3NpkwMyz0JFoVQg8tXYxFyWiNbzYoqG4vU3vU7lst+Y=;
        b=QT+h6t/fjEbQ6W76YP/7tg7PKpJo8EU1nsLQw66IK50FAI/wAjbWDjhfdFKpx5WRuq
         KU/bV5V47poM6oeKRSZbTrkfcflEW9fIujZczf3tauoaK2RSSxo5Xq4q3EDLBHFjd34e
         INRrpM3dX3A+a4h2B3b9ogUuySQO800XOmkWg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3NpkwMyz0JFoVQg8tXYxFyWiNbzYoqG4vU3vU7lst+Y=;
        b=hOLGc61/Bq7jl/in8+tzDj5yMzDpcNOznjCUPTB7SXaD6Ma5I0T93RbgFau7PfDv+2
         9ICTVuI9ETXID7UqQSMv5YHIbaR08puYwWrQKN43PDy7qTzEfd1Omcxivk8e8bbLnZiQ
         2pI9rYKHzw/HxAx0/o2iD8U4JqnYH1iA0fyr2mcE866LcLiuc5NFoqKKT0Gys7Z21m9S
         i8TbCf9Pv4fUhmS6euxzoHo3ubVT7PRIyD91jjxZnfAi/w3t7EyXp1Dk5QHHJUKrbOq2
         kMORN/xaUosno35oqF7T8dUYEGKB32iQciJaHCgqj0vs5rzuI/Aw1tO4szFe2hqSODWi
         bOhg==
X-Gm-Message-State: APjAAAUTAlAkQBoTOdnD21bVOoZGlCAP4qzu6bthR2tOlqfjwDInHsc4
	umxXcrKX7SrocQUKmkPzdmQ/Ew==
X-Google-Smtp-Source: APXvYqwFrbg0ovQV+62TTYdZxbluYfu5iRFJO4i3HiK7/0dPoc5uQvN4gi4y5u+YaF54aRP2Ks5GEg==
X-Received: by 2002:a17:902:bcc6:: with SMTP id o6mr15273210pls.257.1570803534884;
        Fri, 11 Oct 2019 07:18:54 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:1e0b:: with SMTP id e11ls2137032pge.9.gmail; Fri, 11 Oct
 2019 07:18:54 -0700 (PDT)
X-Received: by 2002:a63:d450:: with SMTP id i16mr16913867pgj.126.1570803534328;
        Fri, 11 Oct 2019 07:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570803534; cv=none;
        d=google.com; s=arc-20160816;
        b=CFEKeLKXqyd/I7LWJjnK4Ao97BaHs+rpOo1yLAFX5tKsu9agb1JqXq04j6LSS1pUCI
         9eAiSLQs/GYdKeqRUR1vsODz2kQl470gRvMt41mkCY2Jd7oPhJ/xcZ3EoNCHkX1QfPJQ
         yKROcsignzynftNHwrYll6Y9l1v+A+Lebb1P953FO5Hv9lhlZewmljKglf2FmWvtOU7Z
         DEq4UsslBujyb+J+AhA9wMTb3/YAFUN4g2hRtRTPXSay9JfsqLj4YaiIBWlXIzb34t0e
         BrnywUSfNcVOLc59xXUwpsuAhYb1bF08hBS9IbETpaxLyZc3vHYkKMOEvhocMGlpwNuV
         VMNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=yoMVKHDANohlAdb5zxdvxg69/UYoMm/KT4X5akubYBQ=;
        b=tspntc/U3rjWzAefQEs7HQcmI0znqaoH+ebBGlsYkayXIL4GAuba35wkZSWk5vSflo
         bwLZ4JwVLgK4q8sHpiEXLiaY0WP3jUJ4+34tLKJ/GPH/z2n7nDpkCInN0+PhAs1yIsDc
         n4rjkDArNNJfbTVZdqyAoF3/DeFTAX6bB6yc3CujnI26YyZlSbEsuTul1UWYtEUT+UIy
         7FJPLS3ozT4oQv8JFw5SXWi/b1X0FoLOpY5W4WfJPOrWxKQr6JepCDvKynlxXPVHCtwn
         53GaEPjYN1412v9x3/51YuCtaZfcFJZYYCbfVX5TeJF21cS8BE7lOf4W+9sgKY6oWLc/
         4fLw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=s2PJBxVJ;
       spf=pass (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=andreyknvl@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id e36sor9495950pge.10.2019.10.11.07.18.54
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 11 Oct 2019 07:18:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a65:4c03:: with SMTP id u3mr17200592pgq.440.1570803533488;
 Fri, 11 Oct 2019 07:18:53 -0700 (PDT)
MIME-Version: 1.0
References: <b8b1e4fef9f3ece63909c38b3302621d76770caa.camel@gmail.com> <Pine.LNX.4.44L0.1910111003100.1529-100000@iolanthe.rowland.org>
In-Reply-To: <Pine.LNX.4.44L0.1910111003100.1529-100000@iolanthe.rowland.org>
From: "'Andrey Konovalov' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Fri, 11 Oct 2019 16:18:42 +0200
Message-ID: <CAAeHK+zR=S1cyaYfehyUDrpMGMXvxgLEeS8V2ze2HkwYUp6bjg@mail.gmail.com>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Jaskaran Singh <jaskaransingh7654321@gmail.com>, 
	syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>, 
	Alexander Potapenko <glider@google.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	LKML <linux-kernel@vger.kernel.org>, USB list <linux-usb@vger.kernel.org>, 
	syzkaller-bugs <syzkaller-bugs@googlegroups.com>, usb-storage@lists.one-eyed-alien.net
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andreyknvl@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=s2PJBxVJ;       spf=pass
 (google.com: domain of andreyknvl@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=andreyknvl@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Andrey Konovalov <andreyknvl@google.com>
Reply-To: Andrey Konovalov <andreyknvl@google.com>
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

On Fri, Oct 11, 2019 at 4:08 PM Alan Stern <stern@rowland.harvard.edu> wrote:
>
> On Fri, 11 Oct 2019, Jaskaran Singh wrote:
>
> > On Mon, 2019-10-07 at 12:39 -0700, syzbot wrote:
> > > Hello,
> > >
> > > syzbot found the following crash on:
> > >
> > > HEAD commit:    1e76a3e5 kmsan: replace __GFP_NO_KMSAN_SHADOW with
> > > kmsan_i..
> > > git tree:       https://github.com/google/kmsan.git master
> > > console output:
> > > https://syzkaller.appspot.com/x/log.txt?x=1204cc63600000
> > > kernel config:
> > > https://syzkaller.appspot.com/x/.config?x=f03c659d0830ab8d
> > > dashboard link:
> > > https://syzkaller.appspot.com/bug?extid=e7d46eb426883fb97efd
> > > compiler:       clang version 9.0.0 (/home/glider/llvm/clang
> > > 80fee25776c2fb61e74c1ecb1a523375c2500b69)
> > > syz repro:
> > > https://syzkaller.appspot.com/x/repro.syz?x=123c860d600000
> > > C reproducer:
> > > https://syzkaller.appspot.com/x/repro.c?x=110631b7600000
> > >
> > > IMPORTANT: if you fix the bug, please add the following tag to the
> > > commit:
> > > Reported-by: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com
> > >
> > > =====================================================
> > > BUG: KMSAN: uninit-value in alauda_transport+0x462/0x57f0
> > > drivers/usb/storage/alauda.c:1137
> > > CPU: 0 PID: 12279 Comm: usb-storage Not tainted 5.3.0-rc7+ #0
> > > Hardware name: Google Google Compute Engine/Google Compute Engine,
> > > BIOS
> > > Google 01/01/2011
> > > Call Trace:
> > >   __dump_stack lib/dump_stack.c:77 [inline]
> > >   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
> > >   kmsan_report+0x13a/0x2b0 mm/kmsan/kmsan_report.c:108
> > >   __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
> > >   alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
> > >   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
> > >   usb_stor_invoke_transport+0xf5/0x27e0
> > > drivers/usb/storage/transport.c:606
> > >   usb_stor_transparent_scsi_command+0x5d/0x70
> > > drivers/usb/storage/protocol.c:108
> > >   usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
> > >   kthread+0x4b5/0x4f0 kernel/kthread.c:256
> > >   ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355
>
>
> > #syz test: https://github.com/google/kmsan.git 1e76a3e5
> >
> > diff --git a/drivers/usb/storage/alauda.c
> > b/drivers/usb/storage/alauda.c
> > index ddab2cd3d2e7..bb309b9ad65b 100644
> > --- a/drivers/usb/storage/alauda.c
> > +++ b/drivers/usb/storage/alauda.c
> > @@ -452,7 +452,7 @@ static int alauda_init_media(struct us_data *us)
> >  static int alauda_check_media(struct us_data *us)
> >  {
> >       struct alauda_info *info = (struct alauda_info *) us->extra;
> > -     unsigned char status[2];
> > +     unsigned char *status = us->iobuf;
> >       int rc;
> >
> >       rc = alauda_get_media_status(us, status);

[...]

> Now yes, it's true that defining status as an array on the stack is
> also a bug, since USB transfer buffers are not allowed to be stack
> variables.

Hi Alan,

I'm curious, what is the reason for disallowing that? Should we try to
somehow detect such cases automatically?

Thanks!

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAAeHK%2BzR%3DS1cyaYfehyUDrpMGMXvxgLEeS8V2ze2HkwYUp6bjg%40mail.gmail.com.
