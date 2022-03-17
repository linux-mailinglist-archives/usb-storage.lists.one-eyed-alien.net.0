Return-Path: <usb-storage+bncBD6LRVPZ6YGRBH56ZWIQMGQEOMQH4JI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EFEF4DCB13
	for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 17:17:36 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id g1-20020ad446c1000000b00440c9327221sf4341639qvw.6
        for <lists+usb-storage@lfdr.de>; Thu, 17 Mar 2022 09:17:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1647533855; cv=pass;
        d=google.com; s=arc-20160816;
        b=TgXx6kGWlT57o13aupRKJkhqZgiI4CgWz/Z9FR6QWyQZP/xPHjBtDwE51gqKm6CxX7
         d3Nl3Vy9dC1WV0cKSNHJxy1MMMXdMUE+0wA9Je4V676lEeD3VuvniwTNpZj4jrq/bkEV
         b5E8wZgmlYDQDJmL6tK6s21B8XyUYfQ+QyLhDlZHRL0iYpiEJBBOHzJUP1UDxKPKxSQN
         bcIucBDdpq5OTTnPhPDnP1ayfTUydWt9yOhi7NTIa2oB2tewJfbxHH68s7NnxPV2UsiL
         CxsCYuNpTQ1eSia1/JkNRoRsrZBvcgBQfWMvDvkrh7mscqhWP/jzXnYgW4a2ZeBr6iED
         JJ5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=emBzVE20uYlh+gtrZiVY5HXXxgkWPqKK4ZJnfDePpxE=;
        b=s7MGHOCuiYeUeMh2SD42ftD90x7EUS5hGeEu9UZpD8wets15v9RFiPAI4KCHkrNV0U
         /NSnK8lMwuBcgSRpvj/azO3L6PVnQhsWFoBCCrDeyD/VasYPo0WVYX4zP4iFfQkQrZm8
         PSEhD45dVpQ2IBlclUGHpSMCaUUmbpLR1Dr+yMZy133kNg9S9X6LncybbAM6Rg20W60A
         KHL0lN7J8GDiDOFsrxaDGy/a543HBGry7LsxHploK0WHtEpDLbyftDXp6wfIX4UIA+AY
         nQZ3djA3XLirgN/IkDN2RhkydN8Bqm8/rJeSAFf56ZiDCVjvxSqpc+aQk5WEFXF5raSB
         U+oA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=emBzVE20uYlh+gtrZiVY5HXXxgkWPqKK4ZJnfDePpxE=;
        b=GlIC1t8Mt2te73zxV6vauMZXX1yRO7qaxI80+5mBrHXFseAImpm68FgynuHsbmFMqx
         Wvu0Wcug8tPMVzepRAr05/nfQH5e1MAmtEXj+5XHcHvyhFp0mazfb8c8IFKxuz+SVCFO
         eFmt0E2m7hb699Hvjw97jypFs9KJVFt/R76ok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=emBzVE20uYlh+gtrZiVY5HXXxgkWPqKK4ZJnfDePpxE=;
        b=HLPy1JdvRvU2VYxik9Z4TUU//Ji5cVGvyRsIX+QACUbt6+qX/MChyIGRZ5pGhF7CH6
         KfS7NsdhAQZ5AuBuyvcxRRhexlVi3N+TD1PlNS/W0BG7QGwz/GZvP5Rw+MSKClOn3uQ5
         48Ci8ICwWdmJqVWGR7TA9cNJd2BlSvjuc5opRYdAmPWEvvB8g/uSdrqikxMsLNmp0UVt
         3pjVUCqnnmcz5DivLpQiIN9496GseU6N03F+EKaIkZXK0mB4lWAgzH6+jF/rMUEUoqb9
         oMfLf9gjYgXgEV18n3TlRJmWu8HZulg/6BcfA+BzW8K7OeI5fuEJoyo9s4BTfV8o7ybi
         qitQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530vVDBLl4rAxGMJU0GyM3zaob5655cVkQJc1EkcO8vhkmE0Pu+t
	jPcYgrDr+iU4GZ254HNQf0om9g==
X-Google-Smtp-Source: ABdhPJyCvHbYAu6/JVW7HiGbXm618qE2wKZqWU2O7/Hth0IvyPmHKDb6WYu+h+akj/K/jltGIEaMFA==
X-Received: by 2002:a05:620a:2449:b0:67d:16cc:8505 with SMTP id h9-20020a05620a244900b0067d16cc8505mr3507284qkn.203.1647533855415;
        Thu, 17 Mar 2022 09:17:35 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:1c0a:b0:440:f5fc:f1b2 with SMTP id
 u10-20020a0562141c0a00b00440f5fcf1b2ls429036qvc.11.gmail; Thu, 17 Mar 2022
 09:17:34 -0700 (PDT)
X-Received: by 2002:a05:6214:2585:b0:440:d7a9:dcc4 with SMTP id fq5-20020a056214258500b00440d7a9dcc4mr4119611qvb.32.1647533854836;
        Thu, 17 Mar 2022 09:17:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1647533854; cv=none;
        d=google.com; s=arc-20160816;
        b=gK7vxLieqeMmfWmPpVN5234bqTy7dtAIldGnD+NQAeyrew5ILVY38s8Bk4cXIcrnhB
         LCzf4lDkzlBY3dMTUlR8YzT8/KCTagMh7i4bD4t1DzZ4tNLlDbjAvbnCpTeMaLbJL66t
         +Le/xHddIsbQ3IjvgEpLST8Ypv28zQiKIrr+U0BTY/4Au8dl+IjlX8d+BlsNwcQH9TQL
         lNW58o00H6+Rl+zuNpOpUtjw7tam7hqmxvvNqykXkib/KQPtp1W1wAwXxCeGYr2SnIBo
         Nhf5yUqsRaP6G98Qbnk0blRq+q2B7mNvYvULkv2EBL/4FlLhdcDFgdaNivz9PelLkPPU
         IPNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=HImx/aqZCfNcI+Id78WbKg63kz9e+FQha3XiHeLo6Ns=;
        b=efJt5QhANbCfoV8KkaPBMIuNh/wIpwH1dIPcl1qDTQKVGHptp5edy+USIBcW3zeobo
         uzGc3/6tfBy0qNKST92E3G2vPssyF9EhsunWV1TxDLu/RNIJTruOAmEmYI0uoSKhtj0p
         H6Kgk9xcPn6u+hNrHFjje2sDoNOKDW+PIiZfaVMZk2WB7AMgto6HPY1bNkRUb/OnbgB8
         zpXGQFUeW5Nb1aaGdPsxHFx3D9EL7METFjDp8BN2/tpIT6QWoX4+5IvEFb36qp3osqRz
         RpIvpcJBygB5yDsvsaEQN/kFgBSz+8BJ6BH7W1oCGVz3hbLjooBdJJezOHEVmxQGhvGf
         LogQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id bb26-20020a05622a1b1a00b002e098292016si1459945qtb.135.2022.03.17.09.17.34
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 17 Mar 2022 09:17:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 8673 invoked by uid 1000); 17 Mar 2022 12:17:34 -0400
Date: Thu, 17 Mar 2022 12:17:34 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: kernel test robot <lkp@intel.com>
Cc: Andrew Morton <akpm@linux-foundation.org>,
  LinusTorvalds@rowland.harvard.edu, torvalds@linux-foundation.org,
  USB mailing list <linux-usb@vger.kernel.org>,
  USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [linux-next:master] BUILD REGRESSION 8a11187eb62b8b910d2c5484e1f5d160e8b11eb4
Message-ID: <YjNfHsqfjPqBMejZ@rowland.harvard.edu>
References: <6232d299.9omOW8g6S6l31UFc%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6232d299.9omOW8g6S6l31UFc%lkp@intel.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+62326302@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+62326302@netrider.rowland.org
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

On Thu, Mar 17, 2022 at 02:18:01PM +0800, kernel test robot wrote:
> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> branch HEAD: 8a11187eb62b8b910d2c5484e1f5d160e8b11eb4  Add linux-next specific files for 20220316

> drivers/usb/storage/ene_ub6250.c:2416:27: warning: array subscript 'struct SD_STATUS[0]' is partly outside array bounds of 'u8[1]' {aka 'unsigned char[1]'} [-Warray-bounds]
> drivers/usb/storage/ene_ub6250.c:2417:27: warning: array subscript 'struct MS_STATUS[0]' is partly outside array bounds of 'u8[1]' {aka 'unsigned char[1]'} [-Warray-bounds]
> drivers/usb/storage/ene_ub6250.c:2418:27: warning: array subscript 'struct SM_STATUS[0]' is partly outside array bounds of 'u8[1]' {aka 'unsigned char[1]'} [-Warray-bounds]

These warnings seem pretty bogus.  Their meaning isn't entirely clear,
but the statements they complain about copy a 1-byte location to a
structure consisting of eight 1-bit fields (or the equivalent).

Do the structure declarations need to be "packed"?

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YjNfHsqfjPqBMejZ%40rowland.harvard.edu.
