Return-Path: <usb-storage+bncBDUNBGN3R4KRBO7DTTUAKGQEPWV5M3I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x446.google.com (mail-wr1-x446.google.com [IPv6:2a00:1450:4864:20::446])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB52479F4
	for <lists+usb-storage@lfdr.de>; Mon, 17 Jun 2019 08:22:52 +0200 (CEST)
Received: by mail-wr1-x446.google.com with SMTP id l11sf2439849wrv.9
        for <lists+usb-storage@lfdr.de>; Sun, 16 Jun 2019 23:22:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1560752572; cv=pass;
        d=google.com; s=arc-20160816;
        b=DPAKUveccO/EvnDPenlAgxVDIViNFvtlXL2+XuiL5upO18j22HRTo1oKa+QxLNzZkw
         TJ6KtDKZvKnRtvKxSbm+pLg2mo2jjhsGqy23CBcVL1j3mTUhVsDpJmhZY7AFdppU1/em
         6fziZbFtKMAUyphwUkuCJTLwMa7W1qN2BRcalUg0iUlEph+w/iUtUAbS4s/R8Qd1FpMQ
         nkFDXXUIC+0MapRjju77Tpvq2nYALkCpt14n43wuNTapo/hjFLwJXF1TItN4t6HUKjYF
         7CgxIsRx0N7G5lNuPvU86tud2YCTlvH6SpWE5GLlzO7wfnqqwGBmRiFceHPDje0NvmbJ
         FQng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=NyxWBq9ZpujXGlyVZLvbgn0NHwlXsXKgm1xa8P7C9zI=;
        b=lYdYOofuQPKj5cHgppnFRupAhvVGdTTGULiX3rDexUz/6F9psJR6fyAohuAXmkMX8j
         9KZ+Swvo9VRB8SuL8WNzZ1eNGVHe06ZJU1eTYaqFyi99Sj0SYLrXUifTNlx5vwz5u4J9
         UbVnfldJXOfqtRR/Kl8zItiyxab3IUxlnCfkYcZK2IKjPkFIx96yOOP+nA/G7CJJ6/WL
         cjHjkVTJ6Hs5EUbn7iz0tmCv6w2y5EH1iIpIrUMOel6d6Qm4YZxFsyY7oXUL6l02nWFe
         c5k2W1T21eb7T4aAkMB5rdNQBV6VC/eGCXPVln9/fpNW0AaZfLsdnul5bX4dE06LA1Ag
         tVTQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NyxWBq9ZpujXGlyVZLvbgn0NHwlXsXKgm1xa8P7C9zI=;
        b=d7lK7l1vRabs5lFTZYTCOFj5+Ry+qnfbovyxVIlfdOnjAN74YddldO2b8oVGE0Rb8d
         17lhPpFtRJ346OmaWOS+FasbqU6AJfphH111HCqF1aFeR3vwLGpW6FfAkwWgjt3pkwvA
         eqXQYtopxgxpRnJa7H+K8bJegWvwffOkH4YlY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NyxWBq9ZpujXGlyVZLvbgn0NHwlXsXKgm1xa8P7C9zI=;
        b=Etpkhcru5IepokhDJDE5PgAlo2i46ImgZu5kJUpT8fEw+1yT1v1if+UWUzywV1heLF
         Po/D16YOBsxcWRyqMRdlybuudsSYznFGXlc1Qa9oc7agLCDUeF0rRxTH51IYmwDKeBvS
         y1u5u+L1wQqyPBRwBZ+U+GbZir/GglcVIXWlNRbYbKGL1t48ky/D/AFYKFFZgqkpHhyU
         MRdnOAIJp9893B8Oo8bP2OGQibemVKnzNplvdY6lp8wjSk5DSZEZPdFWS6RHgyDNmqTW
         uAEagajx1mHPBf8jul2yTbwPWbCMekuOaRpsi4gZJCkYsIeU9A8RkrwkniNsnCC2g6UT
         5rfA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXMBLnUa/u/ETX9d1r7HodEt72sDa+Wf4BB3aEIna68e04gWfi0
	pvKxPOfEblQxaQG6eN88mvMasg==
X-Google-Smtp-Source: APXvYqzNTNgWXnXDGYjLNYM9Bh4+qKfC17W6HOWCFY3YDK3ZTL5DZZj6B2dDVszKUwTKdg6uvklBRA==
X-Received: by 2002:a05:6000:100a:: with SMTP id a10mr4754149wrx.154.1560752571923;
        Sun, 16 Jun 2019 23:22:51 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:b6c3:: with SMTP id g186ls4528484wmf.5.gmail; Sun, 16
 Jun 2019 23:22:51 -0700 (PDT)
X-Received: by 2002:a1c:f512:: with SMTP id t18mr16703184wmh.47.1560752571132;
        Sun, 16 Jun 2019 23:22:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1560752571; cv=none;
        d=google.com; s=arc-20160816;
        b=nVb1b7M5bsGdl6SOq4wSmb7NRL8qa/VsiFa6FdV5ax81vqAoy/FSTSM9opnWd4vVAa
         myovZ9WOOwmi+J1RPOeVrZRX23u6Hyz5WVlfr5Hjemcjr2D1fNg/8LkWJrYBzp50dIPF
         /EL4U4FuhhZKDSqonMMRflD4fhlbAhXp4vxq5yNT95mJpUFqfJboB9+ySB+6jsFkhR4y
         nDBpUjPkW1BSpVaSH6Zh884KPaEIY1ZMV3RMGC5LY9a5M8HTkzMAh8oPXlIkJYD6GCDB
         EDHwg0P5glHNXyixHWQ/SnKGOCKJA2YhULEvhJRanw6PcxsAw9aFzJQ+igyC/DLSB+I9
         ZaSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=mhVDz6pOQxUAGhA2RbcrO+hrabJMvNOS7reELqViCXU=;
        b=Psc6BXR9dbysgrsVCnSyXzZKK5YwUqHRvF5YyRYPfqrWEEOM27cEV8LUjMjpTTL5zm
         sf7UnZkl3SvszP/ZybioAz64Is3QNiqRbKJduEftg+8tjSot432LM0rAuGhPyK47Ex6f
         J9z2fzejMkxofRceay0Xseq4pzS2I8kIcu8DG4jlmK2HO3gUTUshJeL/GTSTj1MFdCQu
         0zHAJF70VhF8qHAtCb05DqMezf8oPPgDCPkwOnmDgwgXgjdcO+lLZCW/ct9VcANp11dx
         Zc8tXFs5Yhz+25m4HoVl+nW7bWnjRxJ73P1jbVkQQmM21ZqRD6BG+38wBeIc9cniOBCO
         BKAg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from newverein.lst.de (verein.lst.de. [213.95.11.211])
        by mx.google.com with ESMTPS id g18si9126806wrh.28.2019.06.16.23.22.51
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 16 Jun 2019 23:22:51 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by newverein.lst.de (Postfix, from userid 2407)
	id 8159768AA6; Mon, 17 Jun 2019 08:22:22 +0200 (CEST)
Date: Mon, 17 Jun 2019 08:22:22 +0200
From: Christoph Hellwig <hch@lst.de>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Alan Stern <stern@rowland.harvard.edu>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Christoph Hellwig <hch@lst.de>
Subject: [usb-storage] Re: [PATCH v2] usb-storage: Add a limitation for blk_queue_max_hw_sectors()
Message-ID: <20190617062222.GA5069@lst.de>
References: <20190613171112.GA22155@lst.de> <Pine.LNX.4.44L0.1906131317210.1307-100000@iolanthe.rowland.org> <OSBPR01MB359051D6F83101432E0F2549D8EB0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <OSBPR01MB359051D6F83101432E0F2549D8EB0@OSBPR01MB3590.jpnprd01.prod.outlook.com>
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

On Mon, Jun 17, 2019 at 04:17:43AM +0000, Yoshihiro Shimoda wrote:
> Thank you for the comments. So, should I wait for getting rid of the
> virt_boundary_mask stuff? If I revise the commit log of this patch,
> is it acceptable for v5.2-stable as a workaround? In other words,
> I worry about this issue exists on v5.2-stable.

It does exist on 5.2-stable and we should fix it.  I'll plan to resend
my series to fix the virt_boundary issues for the other SCSI driver
soon, but we'll still need to sort out usb-storage.

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190617062222.GA5069%40lst.de.
