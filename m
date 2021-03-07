Return-Path: <usb-storage+bncBD6LRVPZ6YGRBRPNSOBAMGQER5JCIOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x747.google.com (mail-qk1-x747.google.com [IPv6:2607:f8b0:4864:20::747])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D22A3302C3
	for <lists+usb-storage@lfdr.de>; Sun,  7 Mar 2021 16:52:39 +0100 (CET)
Received: by mail-qk1-x747.google.com with SMTP id u5sf5271951qkj.10
        for <lists+usb-storage@lfdr.de>; Sun, 07 Mar 2021 07:52:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615132358; cv=pass;
        d=google.com; s=arc-20160816;
        b=sOfxXO27NEYbi2moBHqFY+9Uk5Em4hT5OTjBjeCJQuOvLhqrtUmhwyKlcD6isUznXT
         BYMHYlzqp+vozAH2nzV37Efkp5pbzLxbkc5mrc858Smv3AwnLk3UKP8d4e8NllFjm1Qm
         7kftKg/l0tUhALq/An6KW5j8kuWLj5vtsY0ih7cVhUaycDR+DkgrYaZxOERXWL4NodYL
         MQ6aCl7pOnv101wLfeZyPwKZJmMzw2WdyIKzvVBkhgWKoEr2uIev5OqY0sjv8GZyDU6L
         gs9rUYqXF4/yfda6s8VytVd/wcXTf86+Shwr2bZ5TlZjadONQfScj1Y4Z/P9F6NvekGX
         MiGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0XJ9Qu9mluUuYSFneXyXyP0VuL+IjtM+yh9Z5Prn61I=;
        b=nm4cima/qCprs4ch/jJaydaEtGDkp1TxTm6XhrpKMhSWcU5SujZW2yUWmmDCyaVGbh
         DqdRByCifKoLR++t3bLIPnCJZWwHvR9eAkvZaiNYBu9rzNzvBEspJn7V1HviIpKC78ul
         c/YYJ9szL0OVBMQuzWrspzJYFx0WTwPOAs7cwr8kHIhl1guuZ11X1UCFS8VIYEMyEM4x
         C5CqRGsTM9ICTn2J8U6CYuucya+73o5beNNE92ewnhLXU/dsMVFWGCqxD71yC37HDohk
         3aUAYZnCUJ3NkW5tR3gue9I+X4VTlTyJ5onJ3WSkj3pfmwB46UHcPgocYa1rE3gLVvoM
         kz2g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0XJ9Qu9mluUuYSFneXyXyP0VuL+IjtM+yh9Z5Prn61I=;
        b=f3QpacB9945Ax4062Rh/hEk3MstY02JEXoDe4pKA3z9l7V8+tKQ07RMzq9p1biPeWO
         6V1+c2KwLNsKdyW9ASSV3XZV6aCqcBE22xSO+RlOodhm3ORJNyDuIS9IekdqX/wQ9fQH
         LJa7X9L+wcoc3RavkHccpjD0eTBMUusIbaXdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0XJ9Qu9mluUuYSFneXyXyP0VuL+IjtM+yh9Z5Prn61I=;
        b=ty8LgYi33tggWTZq/ewASK1CUlg593C+ijqhTSaaTGA35QKVbDasLkW7vVrIr8pqkf
         t3nOHzGGWaVWDgaSrDxoGmgWk5mJ4DNZ8avDOiY0AwZBz6L1CxKsAdGpVoZNkYOBE28Z
         Qt3MATwQ/qBt9izLS2Y28vH4GAa/0y0PqPQgpGp7HAtGlp0iUcLyFKeEXC06aXgxIGE/
         hctUQst2WW+R3DgUYIQMxK4kXWzawl+K2WIvn+hbg+P23Ie9xiyiVNrG7M4B06Gp0US1
         k0153RZWxeAf/9765Ki0n4f9cSlZftWzy/myjUKxsnUclXGFs8SLKk0Jgu178Gj5HeSg
         CEWw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531SqT67lez5ppUcE04Vo9rgHQXdT0J7jFbZTmrDCpQ6qYQIHNqc
	2YIhHaAI/AfvIG3xSo3uxveejg==
X-Google-Smtp-Source: ABdhPJzTGMfDCBDfqd8mPtsgDN0k1qI1j7NFBnHJOWwCleEusb8Q/I9YlC6K6OPfALGpNA/08zP8yw==
X-Received: by 2002:ac8:3a67:: with SMTP id w94mr6340052qte.31.1615132357832;
        Sun, 07 Mar 2021 07:52:37 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2a48:: with SMTP id jf8ls3747743qvb.6.gmail; Sun,
 07 Mar 2021 07:52:37 -0800 (PST)
X-Received: by 2002:a0c:ea4b:: with SMTP id u11mr17057753qvp.43.1615132357171;
        Sun, 07 Mar 2021 07:52:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615132357; cv=none;
        d=google.com; s=arc-20160816;
        b=XeRI7yKYHPwrY279sQCPi3ywDRSuqnOUGOwAs95hY+ZCaAQHWqNWCdkQmNCufVQrS0
         cULlJC1l6pCBTnRDyvYM8hHIdVe0xpH41qaYaW0VorZNGNa2WIdB7TxXU5POTC6OOEES
         Z33S2Av6tLF12dBU6oX2VpkmlASoLKqFe+Z+g7Wji8z0R6pKAHuesr5EBOfYHOBgF/Oh
         AtkL2nZJ4cNmz24Y6INKiDtC9O5NuX6nXTNMzKIPiC3fA7h2TUX4hwf8VvwHarry/TCK
         oFYvc/M9s8tApUo74A2Nc/21nE7S/bJ8T3pH187/IBx1c9DAWTV/Ne29+kUUZg6uB0/y
         0gOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=igMjIDbJjteR8baxNwSqZyKN0Wa3kJi4QNixmKjHxwM=;
        b=nbj5DKKZBdfloEf+Qu93L968kjWSDsPq7iHVszFDzOq8YhvyyVHkw6mPZCgI/Q6Y8g
         OJB721xv4oWVSXQpmlhkuZy9XGV3UyzLVxxiVS1TVmJMGmu0ENxWDuLZK1lORsqqxSy9
         I8YnFvLKj7yVcPuS/O2sPYBLovNAEOGcZJ4/bbngDFDczFKOKLVObIUja5RLaWOlYXOo
         9kzLXAniAcoY0Wlq6EAPpw380R4vQZWsljLLOn+720V09MTbOcUqb02hCJgAvI4mIsgG
         cK0MwE0C57Mm9CBPsjH6P0eU0Au2LNXmePJi2+uSrjkV7vBCH/r/dm3ogCgG8Ji2RQEf
         bvCQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+605a82f6@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id e17si4681299qto.42.2021.03.07.07.52.37
        for <usb-storage@lists.one-eyed-alien.net>;
        Sun, 07 Mar 2021 07:52:37 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+605a82f6@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 104104 invoked by uid 1000); 7 Mar 2021 10:52:36 -0500
Date: Sun, 7 Mar 2021 10:52:36 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthias Schwarzott <zzam@gentoo.org>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  hirofumi@mail.parknet.co.jp
Subject: [usb-storage] Re: Amazon Kindle disconnect after Synchronize Cache
Message-ID: <20210307155236.GB103559@rowland.harvard.edu>
References: <9f57532f-1fb7-0fdd-b91c-2dfecef5aff3@gentoo.org>
 <20210305191437.GC48113@rowland.harvard.edu>
 <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <2a1f6636-6b57-ccc5-76b3-7eae5e80e7d3@gentoo.org>
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

On Sun, Mar 07, 2021 at 06:58:10AM +0100, Matthias Schwarzott wrote:
> Am 05.03.21 um 20:14 schrieb Alan Stern:
> > On Fri, Mar 05, 2021 at 05:54:43PM +0100, Matthias Schwarzott wrote:
> > > One major difference I noticed looking at service answer time statistics:
> > > Windows sends a lot more requests of type "Test Unit Ready".
> > > * Windows: 6385 calls
> > > * linux: 71 calls
> > 
> > It's generally well known that Windows issues lots and lots of redundant
> > commands to USB storage drives.
> > 
> > 
> > Unless the Kindle advertises removable media, there doesn't seem to be
> > any real point to all those TEST UNIT READY commands.  Unless they are
> > what prevents the disconnections...
> > 
> This is kernel log from connecting:
> [41709.248006] usb 3-4: new high-speed USB device number 6 using xhci_hcd
> [41709.380015] usb 3-4: New USB device found, idVendor=1949, idProduct=0004,
> bcdDevice= 1.00
> [41709.380019] usb 3-4: New USB device strings: Mfr=1, Product=2,
> SerialNumber=3
> [41709.380021] usb 3-4: Product: Amazon Kindle
> [41709.380022] usb 3-4: Manufacturer: Amazon
> [41709.380023] usb 3-4: SerialNumber: REMOVED
> [41709.493988] usb-storage 3-4:1.0: USB Mass Storage device detected
> [41709.494080] scsi host6: usb-storage 3-4:1.0
> [41710.510122] scsi 6:0:0:0: Direct-Access     Kindle   Internal Storage
> 0100 PQ: 0 ANSI: 2
> [41710.510245] sd 6:0:0:0: Attached scsi generic sg3 type 0
> [41710.513059] sd 6:0:0:0: Power-on or device reset occurred
> [41710.526331] sd 6:0:0:0: [sdc] Attached SCSI removable disk
> [41712.629152] sd 6:0:0:0: [sdc] 6688768 512-byte logical blocks: (3.42
> GB/3.19 GiB)
> [41712.846353] sd 6:0:0:0: [sdc] Write cache: enabled, read cache: enabled,
> doesn't support DPO or FUA
> [41712.846357] sdc: detected capacity change from 0 to 6688768
> [41712.849499]  sdc: sdc1
> 
> As it prints "Attached SCSI removable disk" the device advertises removable
> media.

Yes.

> > > How can I get further on this topic?
> > 
> > Is runtime power management enabled?  Maybe the Kindle disconnects
> > whenever the computer tries to suspend it.  This typically happens 2
> > seconds after the last command was issued, which matches your
> > observations.  If runtime PM is enabled, you can try disabling it.
> > 
> I assume this means autosuspend is not used:
> 
> # cat /sys/block/sde/device/power/control
> on

This means autosuspend isn't used for the sde drive.  But the log 
extract above shows that the Kindle is sdc, not sde.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20210307155236.GB103559%40rowland.harvard.edu.
