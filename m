Return-Path: <usb-storage+bncBD6LRVPZ6YGRBXEZQLWQKGQECA2JQVA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id A6B60D4254
	for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 16:08:29 +0200 (CEST)
Received: by mail-qk1-x747.google.com with SMTP id o133sf9054758qke.4
        for <lists+usb-storage@lfdr.de>; Fri, 11 Oct 2019 07:08:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570802908; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gs67srZ8CjaUEUed6++Zy8b0us/PAP278iMkwF7aTdK/7dVzZcfNzCyB8v8EkRgIp4
         6PJRy290/NEP6goj4K0PS+HV97AfehoC0Tx0w2b5RAmyFr+ub8INIKGUTkZD0dohN5F7
         1ajAzlGRFw8aipAhvA6GuFNN3T6KaksRm0iombODU9a1XO5O2WhMve8nUXTV1ZPFihMK
         bzWOtc24Vbngvf2CT58l+Y0Mpk3ze+UtfLZv14/Nf9pyjWHQq3kaqzb+X8Qi9UVWfBxI
         Ot9/R02MbMoFZ6hSrZNzCsXwRUUSiPXoYKsAChP/ZMOuCiVvROBsgL/v5Zb/bej9seRp
         fQVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=q+C3tB8WIewEMAtVNRPI0KhLEVslFhiW8Yz5JB6pxfQ=;
        b=BVYTH4M9tQdyGVHYW/fATmohlQB6ew+urYhS/1fXxvduXcZ9Ob/T3OQDblnL+6EqHK
         DdeWa7xmFOjynypa6JCWJcXY8HzMBrIhkukerjNpXy93L9icD6snNQH9zBSIVty6wLFJ
         PMLWyYgB16xYBRcaqvhxnxgLSC7ozaz9j2Iz3Z4z8im3N1bQxEumQ9ApBdZU0GUp/H9H
         1b8rVPbj5pl+1CJSwCra4maNOKNW+WLoqizdZB14pLCEbyQ46tR6Dt0zM+ixSMjr+FUF
         n31d44Lxk1nSf7oqbTDYJ8IcHdK/ZQzkna9sQ+MHDQqtUViIa2R/pjgafnarCcVzAelh
         e0AA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5db972c6@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+C3tB8WIewEMAtVNRPI0KhLEVslFhiW8Yz5JB6pxfQ=;
        b=jIhXblnXOy0AozXdQNBOtZGpfJ34AGonNVIZna4/5yGsBGj2MctxLp8l2UsBkDFdmG
         +x8LXgN5p2RfrCFlEo6BQ/jyCp34sIjZ58lhqvZRawHtTuQIb8PT0gAruf6quKi5iYQb
         i0dUd1+ds1rSIQ/DmY0QqB4cs21M3aW7Vnfj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q+C3tB8WIewEMAtVNRPI0KhLEVslFhiW8Yz5JB6pxfQ=;
        b=YUUBg6kTBsM31x4NsUMggColaq0Ym7t8hyCwIMm5gPzLtmfS5OGswcleoo+E/oKZWD
         mPl/Lt8BXRztSmzs8vh5u9PG35yZyni/LELDhoI6KuiI0KIv96TQwoi3+MO1PEK9emDi
         pY8MJYjCnulEQlJF+FoD4NXMlzPIqjHVwbNpq3xFqTrpq2mpcFx4yLWjXfJ6X7LgKqZF
         PEi1TusRK4mBWWDdRYVpw0ZTY6Sl6HYkTcVesghZz/7NR3u6ypBjuDN6vnj2b7i3k8sQ
         GJR8gMFSvm5t+1493yaBpEoLnW/nXwuvQ30ZsX55cNmQIwrgYpGkgdy+M/tdu8UwhZMq
         rTog==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXHumXwLVooo+c2Sn9hIXVhmHvgE2KYrZeyehdHCQ2a0uPfSYep
	pWZ832MNX2QtML/zpB5xfGvzWA==
X-Google-Smtp-Source: APXvYqwdoZDLOmrj//zoRdBRzb1h/qTjPmV41dCZdDESPzqFKeJA1Pi0tlexDxeL2l9eVDstnSwVqQ==
X-Received: by 2002:a37:9a0d:: with SMTP id c13mr14275558qke.427.1570802908477;
        Fri, 11 Oct 2019 07:08:28 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:1a73:: with SMTP id q48ls1545099qtk.14.gmail; Fri, 11
 Oct 2019 07:08:28 -0700 (PDT)
X-Received: by 2002:ac8:814:: with SMTP id u20mr17093599qth.180.1570802907948;
        Fri, 11 Oct 2019 07:08:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570802907; cv=none;
        d=google.com; s=arc-20160816;
        b=XmjV1r9AE3OXw2zkcEG2zdrFFOn8Q8PcmHidpkvIsk+qWonFvcB3CdS1v9hbIfiyBE
         te4dBHHqpA6ZdP27HJOHpVOnBomPEceQtViR2wWbjDzmuv1SwjwxMDt+6wlx+15/MO1H
         7WJeDdJQ1s87CAzV8QkGboHepdoprTr9LASmaiAec2B1nBoYmVuNvoqq8HMUQaoO3slJ
         8gDTr9Jdsc28Ko/1es6gzj3j9xVBaqO1VzVFUuzuPVLPITfhlmzrww/YDByIg40Pgjho
         kCs5qglhOihHO4A251TB+oBGgDwJ8neQf7e6OALOwUr1s91Nqu1RInrPUMD7KJnuMaWU
         sI2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=q+C3tB8WIewEMAtVNRPI0KhLEVslFhiW8Yz5JB6pxfQ=;
        b=aXftJBwUpBkQTbb5uG5LhmDPvW013TmSMFrs4inCOa41vpal7IGcQweNmr0sdIXGBV
         P51spCCypCnnR/lLPj38uNMmTpi+FOogeUWG04jk5cUghZeTTyAy6X0M/Q+jmm63jMIN
         PbzxOeSLZvRMLXgRhnJa+qqJjjgDQW/eDE6QCgnt/NV1j6bTbbD6TonbW427uPdOJtsI
         elZxUn4l8Wg7P5lzCmJmP01Mm1ycSAHzwyLozGlHTu8NF25QS+P0jenTaHIcexOxTnE9
         IH0uEAOPwxdRUiwuzlVQE2fE1KvlvXRoO/Zu1MxF6joLRepWEHdlgkq2HoSDCx8oYTyy
         pwAQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5db972c6@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id v41si9282531qvc.211.2019.10.11.07.08.27
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 11 Oct 2019 07:08:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 1736 invoked by uid 2102); 11 Oct 2019 10:08:27 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 11 Oct 2019 10:08:27 -0400
Date: Fri, 11 Oct 2019 10:08:27 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Jaskaran Singh <jaskaransingh7654321@gmail.com>
cc: syzbot <syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com>, 
     <glider@google.com>,  <gregkh@linuxfoundation.org>, 
     <linux-kernel@vger.kernel.org>,  <linux-usb@vger.kernel.org>, 
     <syzkaller-bugs@googlegroups.com>, 
     <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
In-Reply-To: <b8b1e4fef9f3ece63909c38b3302621d76770caa.camel@gmail.com>
Message-ID: <Pine.LNX.4.44L0.1910111003100.1529-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5db972c6@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5db972c6@rowland.harvard.edu
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

On Fri, 11 Oct 2019, Jaskaran Singh wrote:

> On Mon, 2019-10-07 at 12:39 -0700, syzbot wrote:
> > Hello,
> > 
> > syzbot found the following crash on:
> > 
> > HEAD commit:    1e76a3e5 kmsan: replace __GFP_NO_KMSAN_SHADOW with
> > kmsan_i..
> > git tree:       https://github.com/google/kmsan.git master
> > console output: 
> > https://syzkaller.appspot.com/x/log.txt?x=1204cc63600000
> > kernel config:  
> > https://syzkaller.appspot.com/x/.config?x=f03c659d0830ab8d
> > dashboard link: 
> > https://syzkaller.appspot.com/bug?extid=e7d46eb426883fb97efd
> > compiler:       clang version 9.0.0 (/home/glider/llvm/clang  
> > 80fee25776c2fb61e74c1ecb1a523375c2500b69)
> > syz repro:      
> > https://syzkaller.appspot.com/x/repro.syz?x=123c860d600000
> > C reproducer:   
> > https://syzkaller.appspot.com/x/repro.c?x=110631b7600000
> > 
> > IMPORTANT: if you fix the bug, please add the following tag to the
> > commit:
> > Reported-by: syzbot+e7d46eb426883fb97efd@syzkaller.appspotmail.com
> > 
> > =====================================================
> > BUG: KMSAN: uninit-value in alauda_transport+0x462/0x57f0  
> > drivers/usb/storage/alauda.c:1137
> > CPU: 0 PID: 12279 Comm: usb-storage Not tainted 5.3.0-rc7+ #0
> > Hardware name: Google Google Compute Engine/Google Compute Engine,
> > BIOS  
> > Google 01/01/2011
> > Call Trace:
> >   __dump_stack lib/dump_stack.c:77 [inline]
> >   dump_stack+0x191/0x1f0 lib/dump_stack.c:113
> >   kmsan_report+0x13a/0x2b0 mm/kmsan/kmsan_report.c:108
> >   __msan_warning+0x73/0xe0 mm/kmsan/kmsan_instr.c:250
> >   alauda_check_media+0x344/0x3310 drivers/usb/storage/alauda.c:460
> >   alauda_transport+0x462/0x57f0 drivers/usb/storage/alauda.c:1137
> >   usb_stor_invoke_transport+0xf5/0x27e0
> > drivers/usb/storage/transport.c:606
> >   usb_stor_transparent_scsi_command+0x5d/0x70  
> > drivers/usb/storage/protocol.c:108
> >   usb_stor_control_thread+0xca6/0x11a0 drivers/usb/storage/usb.c:380
> >   kthread+0x4b5/0x4f0 kernel/kthread.c:256
> >   ret_from_fork+0x35/0x40 arch/x86/entry/entry_64.S:355


> #syz test: https://github.com/google/kmsan.git 1e76a3e5
> 
> diff --git a/drivers/usb/storage/alauda.c
> b/drivers/usb/storage/alauda.c
> index ddab2cd3d2e7..bb309b9ad65b 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -452,7 +452,7 @@ static int alauda_init_media(struct us_data *us)
>  static int alauda_check_media(struct us_data *us)
>  {
>  	struct alauda_info *info = (struct alauda_info *) us->extra;
> -	unsigned char status[2];
> +	unsigned char *status = us->iobuf;
>  	int rc;
>  
>  	rc = alauda_get_media_status(us, status);

That is absolutely not the correct fix.

The problem is that after this call, the code does not check rc to see 
if an error occurred.  If there was an error, the value of status is 
meaningless so there's no point examining it at all.

Now yes, it's true that defining status as an array on the stack is 
also a bug, since USB transfer buffers are not allowed to be stack 
variables.  And the change you made _is_ the right way to fix that bug.  
But that is a separate bug, not the one that syzbot found.

Alan Stern

