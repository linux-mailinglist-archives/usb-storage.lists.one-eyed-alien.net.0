Return-Path: <usb-storage+bncBD6LRVPZ6YGRBVHBY33AKGQEWJXUVSY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-io1-xd46.google.com (mail-io1-xd46.google.com [IPv6:2607:f8b0:4864:20::d46])
	by mail.lfdr.de (Postfix) with ESMTPS id 978CD1E8CAE
	for <lists+usb-storage@lfdr.de>; Sat, 30 May 2020 03:03:17 +0200 (CEST)
Received: by mail-io1-xd46.google.com with SMTP id v16sf944747ios.9
        for <lists+usb-storage@lfdr.de>; Fri, 29 May 2020 18:03:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590800596; cv=pass;
        d=google.com; s=arc-20160816;
        b=K8ocRchEQt4/gf80H86XaMYbd7jv0JMXzfsqEblEjtZxnGt6/cE/08v3iKoJCubR4h
         g03ceOSkauM5ZlOqqBaIlFZ6Nx9kbY18UwHOnArKrLrW16hnz2Q58g2H4nnwAoGFy7ws
         ae6G8bwgazao0Xmir3DegjjumEM9PrFdD/Vjlz2WsGe9kw27w52dXWHN9mkMjCtzFUv7
         OpAGoCxwzIHcCT1IPFerjmXskNlB5dcO6xxvf50+c7u+iCRzCnxKlF2lqFl1ikKs9Ry7
         sza/17uZuWPFYwBRCpSikoMrk4rhyWme4O6aw1o1hW9aMSmESlxSVtsoZGwWi0f5geMC
         Nlgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=9yIWle7NvkH8QmkDHQhkEwcRcHOFlBcgYkyJUvOVQh8=;
        b=quDOHyoWN36qOaFdvL7S9ZVPqZV5lX0Wuc++kXx4EClAApVaiZl5ovOOxsQftqPsHg
         NvOk624fWnWoL5HwxuDM4idKWAKD29MppH+g5vcI3yqDI2pBpcQqEh7mrv1t3GWRY5l/
         vWskHjCN6vSjRVD4fVWZdcAwovwg9iLkM6SNFEqiAlXgRVnqGoXsT9qYAKmmKE95Vttf
         S9h7EBl2uoT0516vP4MpIhCMZJ/rvJhzMNey7jsT+h0MI/XVC9RfpTSaWDBxWG1PSnrL
         mgao/JmtWDllnhrmZ3KOylZWj/ufedeUfS4Wy7IwT9LKVjf595QXke3DkTEYTb4DWflU
         gW2g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9yIWle7NvkH8QmkDHQhkEwcRcHOFlBcgYkyJUvOVQh8=;
        b=fp1m6nNKND9hx23qAkuVYu2s8mMWJ7ATK8T+azx7dKZeYOsS4uQBAlbXhdgyE2WbKq
         VvRQTP7d4I7xPQ0w796TRNbzh0V38wtK8UOxWTDuH81u9XAoxsqxXEBKZnEImub+Ylk5
         0Rb21F0c3mxPPF52aMk3PdhYm9nFN0Vup9J+Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9yIWle7NvkH8QmkDHQhkEwcRcHOFlBcgYkyJUvOVQh8=;
        b=Sk+IsoHdBSgazMxmvg4vlHCrLknH5VveQsQmi0adzUd4x3/bx+AhU5gn+d271KSdX/
         NOJnGkVusFBVJcak5uNMRwFbM3Hyw0lKfi4yxL34OupAMa9+3TAJ5B9tQHP3sqwf8hOv
         KTv4aJ9NjM/BrvaedrIXLA8sImSP7UufsSG4v/OVAjBZjobAmDOVH1WBmIr10fHJvG7g
         2/4l2+EfVX6YPOi8ccZ+U3/6qC7TUutRwsxG9a9sDcvjWoTP/SKknXbIWAfErr3Qqtt0
         p8gjdac2NFhwki5fKdOeCW4A91c1/D7Ydveo+yMgBnUKDvbtAgrS6CIAXP8HX2cMcFFI
         G/9A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532Beq6iJ7JZOb3agqRNT9xvJAF4QGm1vmjR76YOAEhsFMzZloH7
	5GEoUwgwntYF4Oj1zRWJA7R2qQ==
X-Google-Smtp-Source: ABdhPJyqaYa0i6poms/FcLNtQgriIH9NO0h6oe5owc7G+PvVbY8WZcfb5aQP1WALmTSvqtrwoJm6HA==
X-Received: by 2002:a02:b782:: with SMTP id f2mr9808235jam.91.1590800596374;
        Fri, 29 May 2020 18:03:16 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6602:13d2:: with SMTP id o18ls1208368iov.7.gmail; Fri,
 29 May 2020 18:03:15 -0700 (PDT)
X-Received: by 2002:a6b:8b51:: with SMTP id n78mr8941923iod.120.1590800595703;
        Fri, 29 May 2020 18:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590800595; cv=none;
        d=google.com; s=arc-20160816;
        b=GYe9JH9NANzNm2Grw7VcGb90iejwJ/DYUtDjAUdlwRKyWhhuy+oXM70Ya82hqpawzT
         n195+DZiK5MJL7Xw6aKpt2enMGi6/tx94QFE4w+AYQoYY9Dz7kNJunrdSve+Xjd78Mi/
         k6kCiezkgAJNTf3d6dmaH9ePSOgXnuTOiNSRhAJd6u6ovNwVYG4zHCRCvSl/xQk8uUn4
         HJG9xUXdraCleo4Nq+Jxn4ZQk1r436Y+R4huZadfgABzuh/jCr2t8V1Wa4Vxg2ikVady
         HyyyX+sBcVAdhry795zksxSeE7pEqjL6WBKjMp5WiLHoNWaJIutUCpjaWJlYWeYdtVnh
         J/nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=TIxrCNg8wG3P6uMSaz/TRSQDNQZuMOL0OzUlKJPtPBo=;
        b=QrAxzSzBKpqtsdhO9n7sA7s56JgJb3t1+CuPXEBPCmu1XgaDMUQGYwYBnG/FdseiWh
         0jFDH1Zq+LgO/xawwVvccG6j1YegMM8CDHi+ofX1U0tb7E+vOWOCXu9dI1paHU4CMf6W
         yUNtaiO2c5cttZuSdQRaa6YxzZt0RFWk4z9HdNnpJMdD8OAjdkZkmMxNP7EsGkroNi3t
         4u+nWEAYZf4Xkbh6NXgeFGPPBaLZv+mocK9WqoRNa4hQHEV0179QyG33Iw2PXyxnl2P9
         MRGYNnb/HqZq5AjxPnGxO/eyDNuIw/luuE+XHBme3ZV9Ow7DsrYQq8gO5dVGQtEec9u7
         9QHA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id j78si4003358ilg.92.2020.05.29.18.03.15
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 29 May 2020 18:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 14534 invoked by uid 1000); 29 May 2020 21:03:14 -0400
Date: Fri, 29 May 2020 21:03:14 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Zebediah Figura <zfigura@codeweavers.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
  usb-storage@lists.one-eyed-alien.net, linux-usb@vger.kernel.org,
  SCSI development list <linux-scsi@vger.kernel.org>
Subject: [usb-storage] Re: Bug 207877: ASMedia drive (174c:55aa) hangs in
 ioctl CDROM_DRIVE_STATUS when mounting a DVD
Message-ID: <20200530010314.GA12419@rowland.harvard.edu>
References: <7d0b20b9-4735-bbed-bb50-72764aefd6d8@codeweavers.com>
 <20200528075440.GA2881385@kroah.com>
 <465eaae3-fa60-f37e-1d62-c52236720798@codeweavers.com>
 <20200528160420.GA14188@rowland.harvard.edu>
 <232b68f8-9a5c-89fd-2e12-bf63f49dbe38@codeweavers.com>
 <20200528170509.GC14188@rowland.harvard.edu>
 <cb5371de-984f-bdf3-4cfe-a7343998515d@codeweavers.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <cb5371de-984f-bdf3-4cfe-a7343998515d@codeweavers.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5edd826a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5edd826a@netrider.rowland.org
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

On Thu, May 28, 2020 at 02:27:52PM -0500, Zebediah Figura wrote:
> On 5/28/20 12:05 PM, Alan Stern wrote:
> > I get the impression that the SCSI error handler may have tried to reset
> > the device without first aborting the current transfer.  But it's not
> > easy to tell if that's what really happened.  You might be able to get
> > more information by enabling CONFIG_USB_STORAGE_DEBUG and rebuilding the
> > usb-storage driver, or by turning on SCSI debugging.
> 
> I've attached a kernel log with CONFIG_USB_STORAGE_DEBUG to the bug report.
> I'm not able to properly interpret the results, but I do see "device_reset
> called" as the last USB/SCSI-related message without any nearby mention of
> cancellation...?
> 
> The backtrace looks different, though.

I don't think that matters.

> With respect to SCSI debugging, the best instructions I was able to find
> directed me to try:
> 
> hazel@watership:~$ cat /proc/scsi/sg/debug
> max_active_device=2  def_reserved_size=32768
> 
> while the hang was taking place. If there's more useful debugging I can do,
> I'll need pointers. I did enable CONFIG_SCSI_LOGGING in the above build.

Maybe someone from the linux-scsi mailing list will help.

Here is the problem we are facing, as shown in the following debugging 
log.  The log includes a sequence of six commands sent to a DVD drive.  
The first READ succeeds:

May 28 14:03:05 watership kernel: *** thread awakened
May 28 14:03:05 watership kernel: Command READ_10 (10 bytes)
May 28 14:03:05 watership kernel: bytes: 28 00 00 00 00 fa 00 00 06 00
May 28 14:03:05 watership kernel: Bulk Command S 0x43425355 T 0x222 L 12288 F 128 Trg 0 LUN 0 CL 10
May 28 14:03:05 watership kernel: xfer 31 bytes
May 28 14:03:05 watership kernel: Status code 0; transferred 31/31
May 28 14:03:05 watership kernel: -- transfer complete
May 28 14:03:05 watership kernel: Bulk command transfer result=0
May 28 14:03:05 watership kernel: xfer 12288 bytes, 1 entries
May 28 14:03:05 watership kernel: Status code 0; transferred 12288/12288
May 28 14:03:05 watership kernel: -- transfer complete
May 28 14:03:05 watership kernel: Bulk data transfer result 0x0
May 28 14:03:05 watership kernel: Attempting to get CSW...
May 28 14:03:05 watership kernel: xfer 13 bytes
May 28 14:03:05 watership kernel: Status code 0; transferred 13/13
May 28 14:03:05 watership kernel: -- transfer complete
May 28 14:03:05 watership kernel: Bulk status result = 0
May 28 14:03:05 watership kernel: Bulk Status S 0x53425355 T 0x222 R 0 Stat 0x0
May 28 14:03:05 watership kernel: scsi cmd done, result=0x0
May 28 14:03:05 watership kernel: *** thread sleeping

The second READ hangs for 30 seconds (reason unknown) and then gets 
aborted.  Following the abort, usb-storage automatically performs a 
reset:

May 28 14:03:05 watership kernel: *** thread awakened
May 28 14:03:05 watership kernel: Command READ_10 (10 bytes)
May 28 14:03:05 watership kernel: bytes: 28 00 00 3e 38 00 00 00 3c 00
May 28 14:03:05 watership kernel: Bulk Command S 0x43425355 T 0x223 L 122880 F 128 Trg 0 LUN 0 CL 10
May 28 14:03:05 watership kernel: xfer 31 bytes
May 28 14:03:05 watership kernel: Status code 0; transferred 31/31
May 28 14:03:05 watership kernel: -- transfer complete
May 28 14:03:05 watership kernel: Bulk command transfer result=0
May 28 14:03:05 watership kernel: xfer 122880 bytes, 15 entries
May 28 14:03:37 watership kernel: command_abort called
May 28 14:03:37 watership kernel: -- cancelling sg request
May 28 14:03:37 watership kernel: Status code -104; transferred 2048/122880
May 28 14:03:37 watership kernel: -- transfer cancelled
May 28 14:03:37 watership kernel: Bulk data transfer result 0x4
May 28 14:03:37 watership kernel: -- command was aborted
May 28 14:03:37 watership kernel: usb 1-5: reset high-speed USB device number 3 using xhci_hcd
May 28 14:03:37 watership kernel: usb_reset_device returns 0
May 28 14:03:37 watership kernel: scsi command aborted
May 28 14:03:37 watership kernel: *** thread sleeping
May 28 14:03:37 watership kernel: sr 1:0:0:0: [sr0] tag#0 FAILED Result: hostbyte=DID_TIME_OUT driverbyte=DRIVER_OK cmd_age=31s
May 28 14:03:37 watership kernel: sr 1:0:0:0: [sr0] tag#0 CDB: Read(10) 28 00 00 3e 38 00 00 00 3c 00
May 28 14:03:37 watership kernel: blk_update_request: I/O error, dev sr0, sector 16310272 op 0x0:(READ) flags 0x80700 phys_seg 15 prio class 0

Next is a GET EVENT/STATUS NOTIFICATION...

May 28 14:03:37 watership kernel: *** thread awakened
May 28 14:03:37 watership kernel: Command GET EVENT/STATUS NOTIFICATION (10 bytes)
May 28 14:03:37 watership kernel: bytes: 4a 01 00 00 10 00 00 00 08 00
May 28 14:03:37 watership kernel: Bulk Command S 0x43425355 T 0x224 L 8 F 128 Trg 0 LUN 0 CL 10
May 28 14:03:37 watership kernel: xfer 31 bytes
May 28 14:03:37 watership kernel: Status code 0; transferred 31/31
May 28 14:03:37 watership kernel: -- transfer complete
May 28 14:03:37 watership kernel: Bulk command transfer result=0
May 28 14:03:37 watership kernel: xfer 8 bytes, 1 entries
May 28 14:03:37 watership kernel: Status code 0; transferred 8/8
May 28 14:03:37 watership kernel: -- transfer complete
May 28 14:03:37 watership kernel: Bulk data transfer result 0x0
May 28 14:03:37 watership kernel: Attempting to get CSW...
May 28 14:03:37 watership kernel: xfer 13 bytes
May 28 14:03:37 watership kernel: Status code 0; transferred 13/13
May 28 14:03:37 watership kernel: -- transfer complete
May 28 14:03:37 watership kernel: Bulk status result = 0
May 28 14:03:37 watership kernel: Bulk Status S 0x53425355 T 0x224 R 0 Stat 0x0
May 28 14:03:37 watership kernel: scsi cmd done, result=0x0
May 28 14:03:37 watership kernel: *** thread sleeping

... followed by a retry attempt of the previous READ, which hangs and is 
aborted again:

May 28 14:03:37 watership kernel: *** thread awakened
May 28 14:03:37 watership kernel: Command READ_10 (10 bytes)
May 28 14:03:37 watership kernel: bytes: 28 00 00 3e 38 00 00 00 02 00
May 28 14:03:37 watership kernel: Bulk Command S 0x43425355 T 0x225 L 4096 F 128 Trg 0 LUN 0 CL 10
May 28 14:03:37 watership kernel: xfer 31 bytes
May 28 14:03:37 watership kernel: Status code 0; transferred 31/31
May 28 14:03:37 watership kernel: -- transfer complete
May 28 14:03:37 watership kernel: Bulk command transfer result=0
May 28 14:03:37 watership kernel: xfer 4096 bytes, 1 entries
May 28 14:04:08 watership kernel: command_abort called
May 28 14:04:08 watership kernel: -- cancelling sg request
May 28 14:04:08 watership kernel: Status code -104; transferred 2048/4096
May 28 14:04:08 watership kernel: -- transfer cancelled
May 28 14:04:08 watership kernel: Bulk data transfer result 0x4
May 28 14:04:08 watership kernel: -- command was aborted
May 28 14:04:08 watership kernel: usb 1-5: reset high-speed USB device number 3 using xhci_hcd
May 28 14:04:08 watership kernel: usb_reset_device returns 0
May 28 14:04:08 watership kernel: scsi command aborted
May 28 14:04:08 watership kernel: *** thread sleeping

Then there's another successful GET EVENT/STATUS NOTIFICATION:

May 28 14:04:08 watership kernel: *** thread awakened
May 28 14:04:08 watership kernel: Command GET EVENT/STATUS NOTIFICATION (10 bytes)
May 28 14:04:08 watership kernel: bytes: 4a 01 00 00 10 00 00 00 08 00
May 28 14:04:08 watership kernel: Bulk Command S 0x43425355 T 0x226 L 8 F 128 Trg 0 LUN 0 CL 10
May 28 14:04:08 watership kernel: xfer 31 bytes
May 28 14:04:08 watership kernel: Status code 0; transferred 31/31
May 28 14:04:08 watership kernel: -- transfer complete
May 28 14:04:08 watership kernel: Bulk command transfer result=0
May 28 14:04:08 watership kernel: xfer 8 bytes, 1 entries
May 28 14:04:08 watership kernel: Status code 0; transferred 8/8
May 28 14:04:08 watership kernel: -- transfer complete
May 28 14:04:08 watership kernel: Bulk data transfer result 0x0
May 28 14:04:08 watership kernel: Attempting to get CSW...
May 28 14:04:08 watership kernel: xfer 13 bytes
May 28 14:04:08 watership kernel: Status code 0; transferred 13/13
May 28 14:04:08 watership kernel: -- transfer complete
May 28 14:04:08 watership kernel: Bulk status result = 0
May 28 14:04:08 watership kernel: Bulk Status S 0x53425355 T 0x226 R 0 Stat 0x0
May 28 14:04:08 watership kernel: scsi cmd done, result=0x0
May 28 14:04:08 watership kernel: *** thread sleeping

And a third attempt at the READ, which hangs as before:

May 28 14:04:08 watership kernel: *** thread awakened
May 28 14:04:08 watership kernel: Command READ_10 (10 bytes)
May 28 14:04:08 watership kernel: bytes: 28 00 00 3e 38 00 00 00 02 00
May 28 14:04:08 watership kernel: Bulk Command S 0x43425355 T 0x227 L 4096 F 128 Trg 0 LUN 0 CL 10
May 28 14:04:08 watership kernel: xfer 31 bytes
May 28 14:04:08 watership kernel: Status code 0; transferred 31/31
May 28 14:04:08 watership kernel: -- transfer complete
May 28 14:04:08 watership kernel: Bulk command transfer result=0
May 28 14:04:08 watership kernel: xfer 4096 bytes, 1 entries

But this time, instead of aborting the command, the SCSI core calls the 
device_reset routine.  This causes usb-storage to lock up; the reset 
can't proceed while the READ command is still executing:

May 28 14:04:38 watership kernel: device_reset called
May 28 14:06:48 watership kernel: INFO: task scsi_eh_1:240 blocked for more than 122 seconds.
May 28 14:06:48 watership kernel:       Not tainted 5.7.0-rc7local #4
May 28 14:06:48 watership kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
May 28 14:06:48 watership kernel: scsi_eh_1       D    0   240      2 0x80004000
May 28 14:06:48 watership kernel: Call Trace:
May 28 14:06:48 watership kernel:  __schedule+0x2a5/0x8c0
May 28 14:06:48 watership kernel:  schedule+0x46/0xf0
May 28 14:06:48 watership kernel:  schedule_preempt_disabled+0x14/0x20
May 28 14:06:48 watership kernel:  __mutex_lock.constprop.0+0x180/0x510
May 28 14:06:48 watership kernel:  device_reset+0x33/0x60 [usb_storage]
May 28 14:06:48 watership kernel:  scsi_eh_ready_devs+0x5f4/0xa40 [scsi_mod]
May 28 14:06:48 watership kernel:  ? _raw_spin_unlock_irqrestore+0x20/0x40
May 28 14:06:48 watership kernel:  ? __pm_runtime_resume+0x49/0x60
May 28 14:06:48 watership kernel:  scsi_error_handler+0x448/0x510 [scsi_mod]
May 28 14:06:48 watership kernel:  ? scsi_eh_get_sense+0x1f0/0x1f0 [scsi_mod]
May 28 14:06:48 watership kernel:  kthread+0x13e/0x160
May 28 14:06:48 watership kernel:  ? __kthread_bind_mask+0x60/0x60
May 28 14:06:48 watership kernel:  ret_from_fork+0x22/0x40
May 28 14:06:48 watership kernel: INFO: task usb-storage:242 blocked for more than 122 seconds.
May 28 14:06:48 watership kernel:       Not tainted 5.7.0-rc7local #4
May 28 14:06:48 watership kernel: "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
May 28 14:06:48 watership kernel: usb-storage     D    0   242      2 0x80004000
May 28 14:06:48 watership kernel: Call Trace:
May 28 14:06:48 watership kernel:  __schedule+0x2a5/0x8c0
May 28 14:06:48 watership kernel:  schedule+0x46/0xf0
May 28 14:06:48 watership kernel:  schedule_timeout+0x12d/0x170
May 28 14:06:48 watership kernel:  wait_for_completion+0x9e/0x100
May 28 14:06:48 watership kernel:  usb_sg_wait+0xc9/0x190
May 28 14:06:48 watership kernel:  usb_stor_bulk_transfer_sglist.part.0.constprop.0+0x7f/0x100 [usb_storage]
May 28 14:06:48 watership kernel:  ? fill_inquiry_response+0x10/0x10 [usb_storage]
May 28 14:06:48 watership kernel:  usb_stor_Bulk_transport+0x1f9/0x5b0 [usb_storage]
May 28 14:06:48 watership kernel:  ? fill_inquiry_response+0x10/0x10 [usb_storage]
May 28 14:06:48 watership kernel:  usb_stor_invoke_transport+0x59/0x6c0 [usb_storage]
May 28 14:06:48 watership kernel:  ? fill_inquiry_response+0x10/0x10 [usb_storage]
May 28 14:06:48 watership kernel:  usb_stor_control_thread+0x17d/0x390 [usb_storage]
May 28 14:06:48 watership kernel:  kthread+0x13e/0x160
May 28 14:06:48 watership kernel:  ? __kthread_bind_mask+0x60/0x60
May 28 14:06:48 watership kernel:  ret_from_fork+0x22/0x40

So here's the question: Why doesn't the SCSI error handler abort the 
ongoing command (like it did the first two times) before resetting the 
device?

Note: The kernel version is 5.7-rc7.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20200530010314.GA12419%40rowland.harvard.edu.
