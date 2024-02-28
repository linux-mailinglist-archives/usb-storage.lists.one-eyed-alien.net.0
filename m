Return-Path: <usb-storage+bncBD6LRVPZ6YGRBLUQ72XAMGQEVJSCUKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id E411086B811
	for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 20:23:27 +0100 (CET)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-68ffc21d398sf792686d6.1
        for <lists+usb-storage@lfdr.de>; Wed, 28 Feb 2024 11:23:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1709148206; cv=pass;
        d=google.com; s=arc-20160816;
        b=yo45vvY8wVJ4EvdBLhw4QbSfmzRAUGkiQ82k5QBsF3d0j4SC7tGqnGMAvrED46l79z
         edPJck9QyW0ZbXrAzAxwePWeJn9kyvCvIkIg3LAbezKvSAXo1+FMcQC1jv+vvWw9mbYP
         e0/BOCmWpjGAafofcclA946miAFtq5CfLb49bwReD1X7qs67tAiPGV6ECOltOqI9O9mK
         jEwKZVju9pi9z+eQU4bGngvqtzjhFSf52DKJ37Bp+ldC4QDFa25Be6ctJHLmrQF+YdZM
         ZngUW60UQP1t2YdcCxZ7HoXqBvc219NdiZBypyILZB26O7IzHMwxSlT75JTpojQFPY8J
         1dgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ylEuZ6f3AK7h00uYSbOi/aZLrYKfggdgnvVqTmpioTE=;
        fh=BnkVukM/rAXfNWyzscjBK+ardp8S+H0gd6afE9oXHNM=;
        b=czHUs1zKx3SFk332W+SBXSwePifQEUfU2vksn6TkjLwCkP3ADAyoV2ICbNGrApKmJb
         e6tJfsI1OqPzNtGTHIYyb3IiijsE2+iT3TXSN5jDTJHyZl+C95sLLxJNhN+/HRMjG39x
         ehF/DNyhU8dWF44AXS3Hsnuukp6jESj840MojQat/S0m1badgUXbkcg+ugRf/Fi0OWnS
         y9MQ5tPHl6SPDnscn/2OjH5zXp4f8+aQyGICbFkjQHgnL5n39qnzj1y9e4sAFq5VVnh9
         qXPM7Uylzh5YD4mj1uM8efR12hbevWC7QpOEUvs8taGrROVst3ja0mCkhl8v4jhZMHQj
         2f+w==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1709148206; x=1709753006; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ylEuZ6f3AK7h00uYSbOi/aZLrYKfggdgnvVqTmpioTE=;
        b=TZMhtbQnn2Pi2VlsHlCOUGtqa0uKqU5klJTR56ElFqzXk/LuOBrlUgSXCJzVTLW5zh
         RFOzVf6Qksl5PP1/EwBgpoxwYQVYYZQekRWsXm6wIGS1WN7TxnXaQRUpW5PVFLglxeMD
         9M2o/H3Czra5wm4fT9/y0yLsqD6SD+SHVyxYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709148206; x=1709753006;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ylEuZ6f3AK7h00uYSbOi/aZLrYKfggdgnvVqTmpioTE=;
        b=SESboDzyLMl3N4xyAU6mA3eTJcgAUQVy9kIXvBRbvytbAX3KJSTXSGRYe7Cm3dK8cz
         ztlHx0HpafNkfA+L29v+mn36+DT03yk0aYMkLcGYvoQ1Ba4ZFMWRmBq1+H0X1Yjeuj6g
         vfPmAi6ZOYXnj2eTTdIQH9X1qdfSoQjKbl69pZ2ffw499AMp0gV/GmrZzGJa+lCUOLdu
         6Cn5k37obBHJaaRtkLt7K16VRjOGI99OYPpzjMom+egk+pPJ5SVVRJbB3OBL3I3DqT6e
         9tnbdi8b1N+sTYGbZzgZ3TQFJUHjY8nBAF5lvLc5WCz1MY0xUZE5ZeDmZTnQv84Wxlef
         KvpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVQKULqtXZeOvS+yDVhQb+uhU4SbvvFAasXoR7sFVum6xp171x1w8g5/IUDvx4Ced1Y5ekYN++jXOS1Pm5P8fISRFR4bQRoz6U/
X-Gm-Message-State: AOJu0Yx1ONWiuFyJB063xLPw2v4kYkWsX5sgd91yuGzr2gcLUE1zTMS/
	5c2TtO+Q1YmAl4U6lNvh4mv/tdvOkLumgfvJDdTsx+9yprw1Pu9ZPy6OJIBpzF4=
X-Google-Smtp-Source: AGHT+IFG0XJhAjjk72KfP533Npg+cji0S70S2ac7bylEq7HG1UQZ/TA+CHs/naJH0LFxpKRwJOdhcQ==
X-Received: by 2002:a05:6214:580b:b0:68f:301b:5489 with SMTP id mk11-20020a056214580b00b0068f301b5489mr14475qvb.29.1709148206609;
        Wed, 28 Feb 2024 11:23:26 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:301b:b0:68f:12ff:973c with SMTP id
 ke27-20020a056214301b00b0068f12ff973cls161622qvb.0.-pod-prod-06-us; Wed, 28
 Feb 2024 11:23:26 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWX4h8v0VUVp5N5z7n2pcmCVneQqcjDCBkImZ8OvgR3oxi85NU9xrBmHJdRRNSKhcQYoS/PMZEWZTqYGpJEODtpeFrsujlI6833gtPjGCbS9QpnatY=
X-Received: by 2002:a0c:f2c1:0:b0:68f:b4b0:cc2e with SMTP id c1-20020a0cf2c1000000b0068fb4b0cc2emr1944qvm.65.1709148205833;
        Wed, 28 Feb 2024 11:23:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1709148205; cv=none;
        d=google.com; s=arc-20160816;
        b=VDiY2F9a6NlT8yuXUCZ6VBJQj7v5fISaDm3yz3a16j8f3ii2EeEcn8YU64Y1TYD0nZ
         9Vm0HmT39Dh5qP3jxad39WX7N3O5Yz5eeCzwgdCRYwl+HAI52HWLKR4Docv8mi/S6Akn
         MP1Ac7BUM9yJCVtTQpZiPb5mqFVF3hAdz6zNRxBtf3SgexkQZmj6uETNeI7xjVuakuTS
         qZ+kfjR/LSeBbpz8m9BiIoyeWHcN+Lu/n65IPV1/6pRj2cSZkh4mjpCQVnPztNeGFPaM
         h7EgO/2X+I5fOhvO5FAxAKBtE5AkKvCXb8/L+7tlKtelSzAULOULzKNRchOSXLyxvRfR
         9+vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=7wodWzzvT5AfFACf6Qwny7otGm9W5yysuPilleariZk=;
        fh=wqdoRlSl3sf0KRkEQpHOj8yTetLy30qZmd+bwdmvhes=;
        b=XNraaWZsMrTNSd/KQykCENOhL4rClCws+ZfCLY13Spq0DQKyg2TTzcY0UMgu3kBDt/
         UpEkcuJOzrRiinGW7p8G8Y5aLyZbJc0PlARpolk8RFFwNDKETAMhjGIG2KSxrZT0qZYM
         7nYpv2Ak+I1PxI44V3w4Sb1X6fg6jWo+CfVHbNOHoAAik7eb9Z6H0YUcX1YCVSeRsL17
         afYiEqtMChugUa802q2oMhNZdDHrpNh6aljMumj38Bzu1z9H214ebgt4m5Wp+1MKrPW4
         BOauXRcaDp9fBE6WaVev2abyZ7x2yyeWKQT/CjS5+yvdQm9TLOiAkZHX9g8bs+fO4Gdo
         T9xQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id kj25-20020a056214529900b0068f477e5e59si157942qvb.600.2024.02.28.11.23.25
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 28 Feb 2024 11:23:25 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 803267 invoked by uid 1000); 28 Feb 2024 14:23:25 -0500
Date: Wed, 28 Feb 2024 14:23:25 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Oliver Neukum <oneukum@suse.com>
Cc: syzbot <syzbot+28748250ab47a8f04100@syzkaller.appspotmail.com>,
  bvanassche@acm.org, emilne@redhat.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  martin.petersen@oracle.com, syzkaller-bugs@googlegroups.com,
  tasos@tasossah.com, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [syzbot] [usb-storage?] divide error in isd200_ata_command
Message-ID: <d5328312-4cd0-426f-8db4-29d67790c213@rowland.harvard.edu>
References: <0000000000003eb868061245ba7f@google.com>
 <99b0fb1b-37b3-4da4-8129-e502ed8e479a@suse.com>
 <9bbc5b63-33e3-44de-8bce-4c59dcce5e92@rowland.harvard.edu>
 <12b30393-0b4b-400e-828b-231901d8933b@suse.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <12b30393-0b4b-400e-828b-231901d8933b@suse.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65cf0a42@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65cf0a42@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Wed, Feb 28, 2024 at 05:20:29PM +0100, Oliver Neukum wrote:
> On 26.02.24 19:13, Alan Stern wrote:
> 
> > > It oopses here:
> > > 
> > > 		} else {
> > > 			if (!id[ATA_ID_SECTORS] || !id[ATA_ID_HEADS])
> > > 				goto too_early;
> > 
> > Those two lines are debugging code you added, right?
> 
> Yes, sorry about that.
> 
> > 
> > > 			sectnum = (u8)((lba % id[ATA_ID_SECTORS]) + 1);
> > > 			cylinder = (u16)(lba / (id[ATA_ID_SECTORS] *
> > > 					id[ATA_ID_HEADS]));
> > > 
> > > in isd200_scsi_to_ata() because it must not be called before isd200_get_inquiry_data()
> > > has completed.
> > 
> > It can't be; isd200_get_inquiry_data is called by isd200_Initialization
> > during probe before any SCSI commands are transmitted.
> 
> So, you are concluding that the bisection is spurious because
> without that patch the SCSI layer would see a capacity of zero
> and not even try to read anything?

I don't know.  My guess is that without this patch, the test would fail 
for some reason before the SCSI layer has a chance to issue a READ command.  
Maybe because of a zero capacity, like you said, or maybe something 
else.

Whatever the reason, it looks like Martin's commit merely exposed a 
problem which has existed all along.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/d5328312-4cd0-426f-8db4-29d67790c213%40rowland.harvard.edu.
