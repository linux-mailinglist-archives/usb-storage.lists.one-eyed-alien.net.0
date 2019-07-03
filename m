Return-Path: <usb-storage+bncBD6LRVPZ6YGRBDPT6LUAKGQEPRT6UZY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x746.google.com (mail-qk1-x746.google.com [IPv6:2607:f8b0:4864:20::746])
	by mail.lfdr.de (Postfix) with ESMTPS id B43CD5E667
	for <lists+usb-storage@lfdr.de>; Wed,  3 Jul 2019 16:19:58 +0200 (CEST)
Received: by mail-qk1-x746.google.com with SMTP id s25sf2898877qkj.18
        for <lists+usb-storage@lfdr.de>; Wed, 03 Jul 2019 07:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1562163598; cv=pass;
        d=google.com; s=arc-20160816;
        b=xJhTzekdtQN0JIFy191+sHlHYfs2WkhgN7b0WmvOXfH58KBSk6lpzli7KcB84WPaIb
         tcpuvTqPAkFgcwNI6WaJDugjZ70DH3ecc6QirSOdlwfhgSxmt4dryd18+pnkO6n6DxOB
         pLJQByfdhzAQzEDq4AgAT1ejmFFUONGlEOvCvZrantsuSDEleDXzHOrtkFx8wZ1MHlO3
         S9VGNgtUJIUat5FyDCdeO5E01l+hHXspF51tN9y8JcwLr0DuHGj6wULrvXchaySwqhS+
         bsLbBPk6DwM5PKFU/O0iYlc9UbLW9J+6Kyf88Ec3NHsdeYj2NoGzbECaTjiPnymOg3ri
         Gxdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=L2BQNEuJ7b7hYcDe4NdW53DrdnEXM4ULvSpJ9drH0T0=;
        b=Qpj94H7HjMajtVn84Yf3Kqozim3Hehip6U/9Sokkv/I45wEJ6oll+Gwl04EzLGheod
         G6jmLhLg6hbltl4WCNmGMGTTXuw5GjkGdqwS6V83BY16blSrcSI+Dq0Bk8PTHuOCs/vn
         HMVLM44th6pCkGRpovrd5/U4tlNokV1U0sBf7EWZ96wSofEF11y4htKV1nHlzHdXKWHi
         kVmIVdzgEjWprJdVIgf297TuZw46LNcecqfS+rSyYaXZcspejJlXL7VuZlNj1jL9I8x+
         YB+Q2X4lK0J1kdRE+QLDUzsBu22fDcaekGaNh+0WFCtsNH/GzSvtUtNBbDGJH5O/qc/v
         W8Ag==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L2BQNEuJ7b7hYcDe4NdW53DrdnEXM4ULvSpJ9drH0T0=;
        b=cdCPCNr3RKO5K6Y1T65kUW4OFsF1LTDn/fEg9mNqlchtKzqKYsm0YUMh2pHLjNUOLH
         FjBowE3VZXnuZ36hgsAoq8xx+1wZFjLbr+87o95h4DIfxbjI0YfmXKu/uIv8aLdkKRpm
         Dmd3ZFmFxg7OBaI1zklMri7gRNASXWaxZP6SI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L2BQNEuJ7b7hYcDe4NdW53DrdnEXM4ULvSpJ9drH0T0=;
        b=Zjw0Chg/3qI9+jMl/5aEtNhYS+BdDhcbEVaaNV09fJHa7lKs4fGZ7wwHTaWouVlDnX
         KUuQkolnVJjGtvBBJAUD9oGrWNYqpzowR4mCZ+YHkgb4Y9yH3bmx5y3OmsQrfIQiCjVg
         Okbx7RIElFpPeaLGYIJ9ZV/O1Q1UnR+DNGcybXlauqWkJd6sOWrMGsgrU+3NO+9dgNs2
         BJYZ0Z60CVNaTINLyYsPsBWBt5lx14VvXRsleIz/1tC+m97VNZTxcPK/vXXTF4HN3RAP
         uVLnB4mVEvuboKcmjXOrq0onL2maTz8fvUmwIdOpycZr2afvPQ2p/KEi8A8nLNlkrUxy
         KdAQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAUEpYLMfGuAkTQo+vPCukoMnDzKwNK/hRnD8DgCBMkoFqrH2gtY
	Nu5EwZGY9VXNzEWwkVkeYaZ8BQ==
X-Google-Smtp-Source: APXvYqwKYT1hx4Qf3yj5zQaysFJIGNfLCRWElRhcZhf3BbrKoVICmMBhd4zqn6cm4Xc9Fiws/CiuLw==
X-Received: by 2002:a05:620a:1270:: with SMTP id b16mr30375276qkl.333.1562163597867;
        Wed, 03 Jul 2019 07:19:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a37:4f85:: with SMTP id d127ls916606qkb.4.gmail; Wed, 03 Jul
 2019 07:19:57 -0700 (PDT)
X-Received: by 2002:a37:ad12:: with SMTP id f18mr30472049qkm.3.1562163597454;
        Wed, 03 Jul 2019 07:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1562163597; cv=none;
        d=google.com; s=arc-20160816;
        b=uOeoLaChEH31et+NXy59+yv4J+AVdmeeZpWqutLjUCuuaYn3ptnjl8wbirb9Mp6Mq1
         WRfyELrJogZ0VQ5fBInZKTQlTlu2HPQv7JdMY26jYtoSnzOMWDTZDc6x2sww8wdblUH0
         uET1Nu+in9WDv4qXcBSMowBeezxB1ZbdlQ7SJyZtA4timuKxvSrsAMnNUqPH+bjEdWat
         496Y62tvVpYpB8UgKIfpmkvfqXUczeMAINImvviQcBxQM4mZtamj60W6cmJgKuwj1XLx
         Iy6ARJvY6tCXUdqgLw0+Up4lhutDgBo/wFbJyfx0zc0QtTZZrBZcQ7Xy5GiPWRvucR9M
         oRJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=L2BQNEuJ7b7hYcDe4NdW53DrdnEXM4ULvSpJ9drH0T0=;
        b=jCJXdVy2jOZehOToukT/xfr1Ov8TWXF4fgELbfm+z5sp5uVobRw+b6yfvu9zMpDiCK
         7Rg7dIkwI49vf1f3Oxj+b+HU6bgdTUW86/ODzHPFLX/vS/B73Tgqsr9H48XgUF8nRDVX
         SgoB4ls02VEPXD/JvN5ST1YSozPGQPjT3kKLI8hV525XGgnDnjtRYrfUcqZVLWMYQeoX
         jsWpPuQ5RGODeXVmCsFlBWxnvpgdJ8LTgxaRVmADTBjkiYgW9uy8jvhF1CyY21QOFKYE
         Rqxci4UOS7XU4uOZ4CuVbDPExroTGB5MtCrIUlxCfGwzD0Zl+LgUwgHBi8khd14dGzbA
         crxA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
Received: from iolanthe.rowland.org (iolanthe.rowland.org. [192.131.102.54])
        by mx.google.com with SMTP id d188si2149735qkf.189.2019.07.03.07.19.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 03 Jul 2019 07:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as permitted sender) client-ip=192.131.102.54;
Received: (qmail 2823 invoked by uid 2102); 3 Jul 2019 10:19:56 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 3 Jul 2019 10:19:56 -0400
Date: Wed, 3 Jul 2019 10:19:56 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@iolanthe.rowland.org
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
cc: Greg KH <greg@kroah.com>, shuah <shuah@kernel.org>, 
    Suwan Kim <suwan.kim027@gmail.com>, 
    "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
    "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>, 
    "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
    Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] RE: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
In-Reply-To: <TYAPR01MB454441748DB5CBCDFCF207D3D8FB0@TYAPR01MB4544.jpnprd01.prod.outlook.com>
Message-ID: <Pine.LNX.4.44L0.1907031015140.1547-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5d0bf768@rowland.harvard.edu designates 192.131.102.54 as
 permitted sender) smtp.mailfrom=stern+5d0bf768@rowland.harvard.edu
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

On Wed, 3 Jul 2019, Yoshihiro Shimoda wrote:

> > I would really prefer to see a different solution.
> > 
> > The actual problem is that the usb_device and usb_interface structures
> > are supposed to inherit all of their DMA properties from the bus's host
> > controller.  But the existing code copies only the dma_mask and
> > dma_pfn_offset fields in the embedded device structures.  If we copied
> > all of the important DMA fields then this patch wouldn't be needed; the
> > max_sectors value for the request queue would be set up correctly to
> > begin with.
> 
> I'm sorry, but I cannot understand what are important DMA fields.

Probably all of them are important; I don't know.

> IIUC, usb-storage driver should take care of calling blk_queue_ APIs anyway because:
> 
>  - As Christoph mentioned before on the email [1], usb-storage has a special
>    max_sectors quirk for tape and SuperSpeed devices.
>  - Since blk_queue_* APIs don't take device structure pointer, the block layer
>    cannot call any DMA mapping APIs. So, even if any other DMA fields are copied,
>    the behavior is not changed.

Although the blk_queue_* APIs don't take device structure pointers, the
SCSI layer does know about devices.  And since it is the SCSI layer
which creates the request queue, changing the DMA fields should change
the behavior.

However, you are correct that usb-storage has to call the blk_queue_* 
APIs anyway.  So I guess your patch is the right thing to do after all.

Acked-by: Alan Stern <stern@rowland.harvard.edu>

I still think that copying the DMA fields would be a good idea, though.

Alan Stern

> [1]
> https://www.spinics.net/lists/linux-usb/msg181527.html
> 
> What do you think?
> 
> Best regards,
> Yoshihiro Shimoda
> 
> > So what I would like to see is a new subroutine -- perhaps in the
> > driver core -- that copies the DMA fields from one struct device to
> > another.  Then we could call this subroutine in usb_alloc_dev() and
> > usb_set_configuration() instead of copying the information manually.
> > 
> > Greg and Christoph, does that make sense?
> > 
> > Yoshihiro, would you like to write a patch that does this?
> > 
> > Alan Stern

