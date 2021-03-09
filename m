Return-Path: <usb-storage+bncBD6LRVPZ6YGRBV5ST2BAMGQEO34UJYQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x845.google.com (mail-qt1-x845.google.com [IPv6:2607:f8b0:4864:20::845])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CDD332B07
	for <lists+usb-storage@lfdr.de>; Tue,  9 Mar 2021 16:50:49 +0100 (CET)
Received: by mail-qt1-x845.google.com with SMTP id m35sf1034468qtd.11
        for <lists+usb-storage@lfdr.de>; Tue, 09 Mar 2021 07:50:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615305048; cv=pass;
        d=google.com; s=arc-20160816;
        b=lnru7t8cdJa444aYXeAWUF8356z6Rhzl2xFptldXPREEg01OALTxmjDobm/Yo0Ikla
         C/ihnLrJ9HGjfS14lAcX+uO9wR6B4gOLB8QGcjEUPWkDD6HDY+Dz4rZJesfbWqvP0lHc
         I7wCJOGUC9TKVhC7xarsU8dJydAFIsHfb3bDU6wmQMzwZLaAWLpqIt2WUcEGqV0CnnRj
         cT3M0XGl/Zb7wEg06YoUz2Iei7NRYpP4D+D8UI/LGnK6Y6Qs5pLz+INY9TR09HagsTZu
         Kmcx7lDcf66mJqXHByHJT+gZ+vQkd9mXrUIIBlMkc03bpBQveJ8QaR4/OEvsiFEUhojq
         LiJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nUMw4QMBKOfC0RBmqpZx7cKsYGU3CpHq34QnZDODG5E=;
        b=X3M9GxGkLGkoHGHZsF5yaHEPTQ2Yu38eWH2/kxwyLWmTvGOa0mnyT4H3vj92V41vky
         jpZ6xakzCBF60l+G91rEC7K1gn/UJO9bh3NeqWGaRrDYA4imTJU1BlbhvvSDfnW+v8qq
         1hfOPUkaED16m4+BHqOJ14/NsYtoOosIwhS417agOlb2Gq04B0D8YyuzHzEkcTvC//CC
         VJ+qQyY4xS9bEXJo/ON2iDyHIkzc+Yl/5LBnJWmjtq1bVeIuz/8vr7fBGOkk6CzmzsGo
         7nN9eRjHrRx01i2r72GgUEvsI3W/1CnB166ddfviHPwd/liFtozmaqfXNEQxrpRmrAr/
         AUzA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nUMw4QMBKOfC0RBmqpZx7cKsYGU3CpHq34QnZDODG5E=;
        b=ZIY4qM7YXYvogz0zVed+PeUPgnHlp19IZNvm1TUumi5i9L8oaerZbC/nVauhLHzO4r
         J7kk/XUg+gFqpsmr1LP6pgXa1Jo1QM3wtmmVt8fGtQEuUM64oPnnEkriZhi5YVj8qVXW
         QobZ3ErRHj948tCTYVMfMTWQzNH88T6WkcHXs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nUMw4QMBKOfC0RBmqpZx7cKsYGU3CpHq34QnZDODG5E=;
        b=orq7WUstQGYbqdF4jNNNZeif0b2Vlk4gwMeyF/I+vDR4M6SgrzTD8PtdfCntx8SIOA
         OCbzPo/r6KOhxCQ1ZMlJo5fUHPB0Y66ncKoUEVFUDYkN9xVmfbzVQ5sPlaiQDPBfK8cC
         EO/sFNBH70E6lRTczPsMSjUSXpClFxpZl6hdHILivbWnJbbeNjVUYFrjP13To+dH5oG3
         KNkCyybMIatvIYfEzsUEqxCgWkmou6YRr7DxBYfFZ4bQ28B+giTHnR8ce/63+UqnzCJV
         oFK8JhIDQ4VrUKo11z4faInCuq4unHIwa+vgElZ9b/F4rhHvVTxSRTQ3ajY0L+c5bX+u
         3TCg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM5339w1den/8TBQ/VTGuqzuS4AvnRwRSz+QfnwwbPFCAgS+zpDg6S
	IniplR4D2oDSy/rho0wTb8rkPw==
X-Google-Smtp-Source: ABdhPJwK4XLnEIXCfeyaipKTy96h0lPOxnnE81cgtwTo6+xpA6X4XNo/erjPX4alhNlOnoTKBAj+rg==
X-Received: by 2002:ac8:5bc2:: with SMTP id b2mr25580373qtb.144.1615305048293;
        Tue, 09 Mar 2021 07:50:48 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:f97:: with SMTP id b23ls10832537qkn.0.gmail; Tue,
 09 Mar 2021 07:50:47 -0800 (PST)
X-Received: by 2002:a37:7c87:: with SMTP id x129mr1447132qkc.293.1615305047503;
        Tue, 09 Mar 2021 07:50:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615305047; cv=none;
        d=google.com; s=arc-20160816;
        b=mumiUFtbXjBHZRuBKWSjkxbOnWcB8h/TjM5H0vKpG+NO9/QNr9p+8xKnKbwBPUxC7C
         3Nj/KnPpxSDVTEMhpH58kvG8ue6o55G6hoIPcwW5k3HeYymgot6mZF23zD+p11DF3a/U
         EvLV4RjyiJQpu5Et97ZQ0046PiB65R4QYWB8JRwqZosmV5Rwd6AAsYfVGn0jfB54KM9C
         2/FxLMxW0PxOfxnNboOIkxQ0ajgK9u+iljAMmBYcdo4Nxr+8k9hUKqS0u5/WyxiSld/F
         P9kqbtXJuqvfDlZajYaPXUsBCKqIolEkwnKY6qAGPrOn32ZEixPTt5EM+FoztV/eTvfg
         AbZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=tiYwPkOdoQCLR6MjapC7KobLlmFVwdR6E7Ja80qs1z8=;
        b=Fv7Dk2lPA6eIn78TsKViyf2YntELYi/TZHfVFFRH/yjf2tUfWRiUaGrzjMW+Dut6Ms
         HRILzxwP+bqjnmEaRnC9v7V8BODsv73OaFVeJTXCsx629dtm01IzMerAjqCAdyG8x4MG
         dyDhrfanAYVMotTLd2kzJfDlq8aG4wuYnDLxM5xlwzcU6Ng5OLNO9pBO928+r0qLOBli
         QJ70ItuuN1/p9y3bpY1E1GFiSM1AK/oAlujuPPJzEBdA7lhvx2wQ/VHTAD+sgfb71Jc5
         mOCpuVKMJH7anP7KQyQwMvq7Zn1G0DYBhQAK2LvllLMPYSajFm6s2+jlDg8sPmzKQXi1
         sGbA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id r1si8610886qvm.110.2021.03.09.07.50.47
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 09 Mar 2021 07:50:47 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 181492 invoked by uid 1000); 9 Mar 2021 10:50:46 -0500
Date: Tue, 9 Mar 2021 10:50:46 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: Re: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210309155046.GA176674@rowland.harvard.edu>
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
 <20210307155236.GB103559@rowland.harvard.edu>
 <9c3121a9-3d0c-60b3-ef17-993b7d2e9149@gentoo.org>
 <20210307165856.GA104554@rowland.harvard.edu>
 <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <268e646f-d4ea-3190-f1b9-8e69bfc1b019@gentoo.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
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

On Mon, Mar 08, 2021 at 10:59:48PM +0100, Matthias Schwarzott wrote:
> Am 07.03.21 um 17:58 schrieb Alan Stern:

> > Okay.  Can you collect a usbmon trace showing the events leading up to
> > and including a disconnection?
> > 
> The easiest reproducer is by calling sync while having a file/the device
> open (and keeping it open afterwards).
> 
> 1. I recorded usbmon trace like this:
> # cat /sys/kernel/debug/usb/usbmon/3u >
> /tmp/connect-python-sync-disconnect-usbmon.out
> 
> 2. Connect Kindle device
> 
> 3. Then trigger sync with python:
> # python -c "import time; import os; f = open('/dev/sde', 'r+b');
> time.sleep(1); os.fsync(f); time.sleep(5)"
> 
> 4. After 2 seconds Kindle disconnects (does no longer show USB-Mode screen).
> 
> 5. Ctrl+c the recording
> 
> When the final sleep in the python-command is missing, the Kindle does not
> disconnect.
> 
> > Alan Stern
> > 
> > PS: I suspect the SYNCHRONIZE CACHE commands are correlated with the
> > disconnections but don't cause them.  That is, I suspect the
> > disconnections happen when the device has been idle -- and generally the
> > host computer sends a SYNCHRONIZE CACHE command before idling a
> > removable drive.
> > 
> 
> I cannot read the usbmon trace, but wireshark displayed a command "SCSI:
> Prevent/Allow Medium Removal LUN: 0x00  ALLOW" when closing the file.
> So I suspect this command also counts as activity (!idle).

Here is the revelant part of the usbmon trace.  The second value on each 
line is a timestamp in microseconds.

> ffff88814e50d0c0 2440334800 S Bo:3:039:1 -115 31 = 55534243 79000000 00000000 00000600 00000000 00000000 00000000 000000
> ffff88814e50d0c0 2440334822 C Bo:3:039:1 0 31 >
> ffff88814e50d0c0 2440334824 S Bi:3:039:1 -115 13 <
> ffff88814e50d0c0 2440334909 C Bi:3:039:1 0 13 = 55534253 79000000 00000000 00

That is a TEST UNIT READY command, showing normal status.

> ffff88814e50d0c0 2440334922 S Bo:3:039:1 -115 31 = 55534243 7a000000 00000000 0000061e 00000001 00000000 00000000 000000
> ffff88814e50d0c0 2440334949 C Bo:3:039:1 0 31 >
> ffff88814e50d0c0 2440334951 S Bi:3:039:1 -115 13 <
> ffff88814e50d0c0 2440335817 C Bi:3:039:1 0 13 = 55534253 7a000000 00000000 00

That is a PREVENT MEDIUM REMOVAL command, sent when the device file was 
opened by the Python program.

> ffff88814e50d0c0 2441336674 S Bo:3:039:1 -115 31 = 55534243 7b000000 00000000 00000a35 00000000 00000000 00000000 000000
> ffff88814e50d0c0 2441336697 C Bo:3:039:1 0 31 >
> ffff88814e50d0c0 2441336699 S Bi:3:039:1 -115 13 <
> ffff88814e50d0c0 2441336911 C Bi:3:039:1 0 13 = 55534253 7b000000 00000000 00

That is the SYNCHRONIZE CACHE command.  Notice that the timestamp shows 
it occurred one second after the PREVENT MEDIUM REMOVAL.

> ffff88814e50d0c0 2442346649 S Bo:3:039:1 -115 31 = 55534243 7c000000 00000000 00000600 00000000 00000000 00000000 000000
> ffff88814e50d0c0 2442346700 C Bo:3:039:1 0 31 >
> ffff88814e50d0c0 2442346702 S Bi:3:039:1 -115 13 <
> ffff88814e50d0c0 2442346799 C Bi:3:039:1 0 13 = 55534253 7c000000 00000000 00

One second later, a normal TEST UNIT READY.

> ffff88814e50d0c0 2444394684 S Bo:3:039:1 -115 31 = 55534243 7d000000 00000000 00000600 00000000 00000000 00000000 000000
> ffff88814e50d0c0 2444394713 C Bo:3:039:1 0 31 >
> ffff88814e50d0c0 2444394720 S Bi:3:039:1 -115 13 <
> ffff88814e50d0c0 2444394804 C Bi:3:039:1 0 13 = 55534253 7d000000 00000000 01
> ffff88814e50d0c0 2444394821 S Bo:3:039:1 -115 31 = 55534243 7e000000 12000000 80000603 00000012 00000000 00000000 000000
> ffff88814e50d0c0 2444394866 C Bo:3:039:1 0 31 >
> ffff88822c917540 2444394928 S Bi:3:039:1 -115 18 <
> ffff88822c917540 2444395673 C Bi:3:039:1 0 18 = 70000200 0000000a 00000000 3a000000 0000
> ffff88814e50d0c0 2444395696 S Bi:3:039:1 -115 13 <
> ffff88814e50d0c0 2444395723 C Bi:3:039:1 0 13 = 55534253 7e000000 00000000 00

Two seconds later, another TEST UNIT READY.  This one returned a failure 
status, with an error code saying that the medium is not present (in 
spite of the fact that medium removal was supposed to be prevented).

The usbmon trace contains six more TEST UNIT READY commands, sent in 
quick succession, all getting the same failure result.  Notably, it does 
not show any sort of disconnection.  The final timestamp in the trace is 
2446328158, which is just five seconds after the SYNCHRONIZE CACHE 
command was sent -- there's no way to tell if anything happened after 
that.

Maybe there's something else going on under Windows that we're not aware 
of.  The only significant different I can see between this trace and the 
short Windows trace in your original email is the time interval between 
TEST UNIT READY commands; here it is two seconds but with Windows it was 
one second.  You can change the interval by writing to

	/sys/block/sde/events_poll_msecs

What happens if you set the value to 1000 before running the test?

Also, the usbmon trace shows that my guess about power management and 
device disconnections was completely wrong.  The bus does not get 
suspended and the Kindle does not disconnect, even though it seems to 
become unusable.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210309155046.GA176674%40rowland.harvard.edu.
