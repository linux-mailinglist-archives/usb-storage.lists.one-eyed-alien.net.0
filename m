Return-Path: <usb-storage+bncBDUNBGN3R4KRBT4HRLUAKGQE4XNGV7Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x347.google.com (mail-wm1-x347.google.com [IPv6:2a00:1450:4864:20::347])
	by mail.lfdr.de (Postfix) with ESMTPS id 0542F448BD
	for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 19:11:44 +0200 (CEST)
Received: by mail-wm1-x347.google.com with SMTP id t76sf1920273wmt.9
        for <lists+usb-storage@lfdr.de>; Thu, 13 Jun 2019 10:11:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560445903; cv=pass;
        d=google.com; s=arc-20160816;
        b=zIhiN+/CUdt8PdNxJgXQI24tDF7T8jLJq9w9wDIfNk6q6D99KytBjIZ5Z+9uFOEsF/
         uqRsMS/nU5oj+rO7VyrVH8+KhPMTxoaL29Wh2XicNM9gBuIzJQpiZlfbLvoeiU1NrlnU
         RLDE4AZcq38D/5apwFYTTapiEjVEum4WbHMMhxbfA6xFI9c/GFtElxUzBQpCBKGvWunD
         bBI2O/i0V9/0mtt9y2EcJWk+dQ47jhD0nqC3sDNP4fjp+9/KFyKWvmTs4zTsfjYcmVQw
         XMHwSmgiVR+W/Eb7JOQt3gPVlnhCnfdqMBCH3xjnq30/rgV6CjP0XWBdQ50MTy0slBfg
         BeWQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/KNU2dSHXhkgKCjsMbMWa9OtKDRgVOLEbRp99UTKWio=;
        b=ot8GyfxhuORvl5cwVB7nIUz4URmpbm948eBAe690V30klU71nSHxWS4Qgw8kvNS7/u
         ZS6JTyVBPjJW2afEubvP9PsJj+vzlM5oambzS6Fzd0OwgUSh6L4GwF4eEUeniyIg0ZUv
         05izoD+DPC2GN4m+hX+qXx+KVYhqcBUbE5MdXOM8D17ZHmk2UjRBYwZbuO7+o2T1Qkec
         UXFDUSIkMq5rOy5HE/fCIkRyRykT5zHjyx/oURWFSBU1YZnIdCN2nDGoWCle5ilrCgLs
         m9KMNE8NFxOawYL4eTLDtszoPsUJ3cx4cVQ6apyNVCwICefhEP7P8fn8v1IkSIaSli7l
         mi/w==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/KNU2dSHXhkgKCjsMbMWa9OtKDRgVOLEbRp99UTKWio=;
        b=F4Pya/EztV2IpJ7ps7N6H0Qh9XOmG2sXsJGvBfyffmPcRh8l+XjUKPlLkBByJYxa2R
         p2WqZ0x8lefp+19akwVq1vIwOkoyCUZw9r6tw7DG3PqMWnBqsM6dQv9CTOgmInlpiku3
         sNDxeRJ/8eI+PdFX5JU2hSMlSpirQVZCeWrss=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/KNU2dSHXhkgKCjsMbMWa9OtKDRgVOLEbRp99UTKWio=;
        b=pvnXzkcBYX56VQ0qmLP6jk1wxWsjv2ayUBi7FuiGimwAHdbYdpB7WOiwvdcCtUzjEi
         9A4sCcCCXOzCaxxYmCCfgAwQY5py7rtgNNNLmqAB/UBDVN7nd+3xbCwN2xaJ+nC4Qa9N
         XUyfs4URByHkv1BG8jIOnJOsfN+uZIsTf8CfgIZMuvoFzBxqTwRtXfeKTixC7Pk6Ba/J
         y5UkUXmRI7+xSwgpN7DQEdt9LM+gdg+J/jSn07aW2yxDZEN83zQnFujF2RxaClHzhMm3
         Vt2MNcVLHVCQOxYM3/ipz9roEKwlM9SAhuc3VfBocERrg8/38vShcNEX9UrVRwhzxuZ/
         KX7A==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAX9lpvQ0H3ZMpQvs4oRPTJVsTd5hurZ7EWNNHe2aPBzUl+D7wfN
	hucVzFVl2JXPx+IRgCFWMt3gKA==
X-Google-Smtp-Source: APXvYqx/fGDXFs6YgjfFzMIZsWWmURzejGyXPhnBoKZIKbgrmN9oiqQqD9Q0Pbw2bYoic9b4P1oDXw==
X-Received: by 2002:a1c:e914:: with SMTP id q20mr4772670wmc.55.1560445903721;
        Thu, 13 Jun 2019 10:11:43 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:5f86:: with SMTP id t128ls1994255wmb.3.canary-gmail;
 Thu, 13 Jun 2019 10:11:43 -0700 (PDT)
X-Received: by 2002:a1c:f512:: with SMTP id t18mr4509707wmh.47.1560445902932;
        Thu, 13 Jun 2019 10:11:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560445902; cv=none;
        d=google.com; s=arc-20160816;
        b=wiPmMWwTbVEgE9iR6Vyy9zos2fZ1CREW/k2tczpWVfuNwOfdtH/hIqSVz6ZBukW8Gr
         MC/GvXUmWBg58UwDK2zTavthmVEmTMMxWjZOk9LtJQv5YPJQdnXF2Mev5e0JdZ3s6E1S
         w0IodNR1A+UPOIdKAuzlSitobK2NjgkzVP7CJkop4RdVwHLThsQk01YHEZgRQrAdpuhz
         J+0TrMtisSBkPnfL5Gcd+JIt+lwIvN0i6erTTISKCxBp3JGPNKF0Wq32g36HNVmglqQ5
         Cqa69tN3KrT/ubCxcijJarcGPlMMdSBxf8IqwjAlnQClFDONrUdhNdE8uFMSq+/bvGAl
         Oafg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=HnjTxs+DWe2R5yCCi0/cikXHUKsCnwrCb2rVHME1l4o=;
        b=0fBN8G84CQq7w2N1Z0r5eArfZGZfHGl99fdfMYq8tEJ6KR6JPOb3K9WJB+iMct0mrk
         WEpITva3CAcBT20t8Q7NmY9RPBTm1/xNX6lTRHq2CkZfZ6AWjD5eCLz1Qx42GofIssx1
         QSnIjH3KGtpEhu6mqC3Nqeq1P4riH21sFjrUTnf3Zb+Ljx8DDJJpptnEOEtS97BZdgHw
         fr3wDw1oAXhz2DX0kZT7b7mtWZ6YHumACKfDrOt573P83uDmCpn5rWIfZRH/k7J5IoT/
         89cvYMvFN96UPPRlO3wZJiasaSYn50ofa8nBC39uIJ33SHq9GaGok7V7S1qRX2eMD3eg
         t0GQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id a1si370666wrr.196.2019.06.13.10.11.42
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Jun 2019 10:11:42 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id EB4AB68BFE; Thu, 13 Jun 2019 19:11:13 +0200 (CEST)
Date: Thu, 13 Jun 2019 19:11:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
	gregkh@linuxfoundation.org, hch@lst.de, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	linux-renesas-soc@vger.kernel.org
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Message-ID: <20190613171112.GA22155@lst.de>
References: <1560418611-10239-1-git-send-email-yoshihiro.shimoda.uh@renesas.com> <Pine.LNX.4.44L0.1906131258310.1307-100000@iolanthe.rowland.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.1906131258310.1307-100000@iolanthe.rowland.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 best guess record for domain of hch@lst.de designates 213.95.11.211 as
 permitted sender) smtp.mailfrom=hch@lst.de
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

On Thu, Jun 13, 2019 at 01:06:40PM -0400, Alan Stern wrote:
> Hmmm.  Would it be easier instead to copy the DMA mapping parameters
> from us->pusb_dev->bus->sysdev into the SCSI host's parent before
> calling scsi_add_host()?  That way the correct values would be
> available from the beginning, so the existing DMA setup would
> automatically use the correct sizes.

It would in theory.  But at usb-storage has a special max_sectors quirk
for tape devices, and as the device type is a per-LU property we'd
still have to override it in ->slave_configure.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To post to this group, send email to usb-storage@lists.one-eyed-alien.net.
Visit this group at https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190613171112.GA22155%40lst.de.
For more options, visit https://groups.google.com/a/lists.one-eyed-alien.net/d/optout.
