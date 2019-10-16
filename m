Return-Path: <usb-storage+bncBCUJ7YGL3QFBBJFITTWQKGQE4MENSFI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id D9C61D91BF
	for <lists+usb-storage@lfdr.de>; Wed, 16 Oct 2019 14:59:18 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id 6sf17589593pgi.10
        for <lists+usb-storage@lfdr.de>; Wed, 16 Oct 2019 05:59:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571230757; cv=pass;
        d=google.com; s=arc-20160816;
        b=ntcXtaWpIkhXjjcWhdVDZMB67SFS3O0Pr6MgWkZFj47skGxw2dC+1pI8tGho4yrodK
         jjqUNnO6kspkvQsn5b7+f+bLy6JmWZKF+KIKxmfwNdH1IHTrkrY4twhRI3z1AoPlyUFW
         XBHPdstaYiL0y9YWsuI5oR/ohz8BT8ctTet4sUiI3jTpQOaXt0K4+zEF2/m9RRFgpv0N
         6IL5nvQ480po0ylkyoihEZfnYdMLyY+RStW4Yj+60yPzbeTHIUPFErD+ggrcbwbXYaG4
         cwFGoUOcNVtLLv1dF89s+lapxAlSfBBtPbqdB3OBRVrEZ0pYXZvzzMY6jp1WIwruTXu6
         nw6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=UuQlIwmdXgQLx2lrR8nBOtqvmVDwJtxPv31nXqNrNWY=;
        b=skPUm/6nMuQK2yLWV5qJu0v6tulnGjU43po/pcraLVaJDoe+H0j7yS9aBwcy+/QwCA
         ZbCRJobj9pYTVhkxa1PAU0pjTrhQhiB+wMQO312RjW3Tgm3rmtVg7KMHwo6OO4dqHh18
         ArvFySiMk+VvXyUy4yh8vqTm93kfFds9LWuFXQMSNBqUqsa/ZnzIutVd8V9K2jfXJAtH
         z3AJm4QD8kKbvqzAeZJCmdy/RR14AN+1I5QJXUbmleYXhxa1mFFvPIuaKHnfIl3ViV71
         vzwOaVwvE5UzfAeHqkouu4WtUoQSrbLGgTVZLr4UDY6EQ2sBXOfLl5y9o1xAAkKEhJhM
         4IhA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="l+YK/3/0";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UuQlIwmdXgQLx2lrR8nBOtqvmVDwJtxPv31nXqNrNWY=;
        b=XcDZPLgQj9qE845AUNAErOheFPZWMzO79v1+wtwC6kMtwb34E2qtw0MVZ1Bnwr22MU
         Fa4icE6RLJatmW7m2tXkVAEQLwrVONJRpVFEMTDqa5IJeLGrAXeS+R+yLy8bmxd5SBsn
         PPNYE58jhyS1BL/LdEUdI9BdU3p65JQdonsBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UuQlIwmdXgQLx2lrR8nBOtqvmVDwJtxPv31nXqNrNWY=;
        b=USC49Lb5XgQDlvXSbJg/F95/nHUfBwC0JJxRxaH2uHZIru/d42IanxvIw7sSpab9kA
         rQecLb1A/NEpZ/Nmpd/Vw5SUx4+Qhhe6X3O6l0vDv7qYOs8JW+tPSRfg+OoyTHz13tRZ
         4Zz1IH3anGowSu4s/+8rObpVJwGU7Xf2fKejwI1fy2hl+uG/V8xYNn9nHSGHdAp+YkDs
         jCbeIqEEGnVx73n/QpAcfmPpMBI37ZUf2FoX8E8+QQNiVRGkpwv3G87vzra98sy11gs0
         27ceIgkXqmT0u3QD1Qy8lZfGABLLmkghwYeQhcK5HdHkVeb5wBT77LRnu6x/IBGjrhSX
         bgqg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXNRsD9EdjliFxo7dyWJI04r4yp+JNgAygEGco8eAMzy1JEWKNh
	sx0IZZEccIrSZ1IMR1b1xZHgUw==
X-Google-Smtp-Source: APXvYqw8Aww4g2wPdBGLDLF3fftbTrtk8PXzAFQuBZZ0SOH+pzVp9PhQ+ncYMr/WXYvjaoHkjcU9Mw==
X-Received: by 2002:a65:6641:: with SMTP id z1mr7948662pgv.23.1571230757159;
        Wed, 16 Oct 2019 05:59:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:3726:: with SMTP id u35ls802076pjb.2.canary-gmail;
 Wed, 16 Oct 2019 05:59:16 -0700 (PDT)
X-Received: by 2002:a17:902:bd08:: with SMTP id p8mr41089475pls.248.1571230756417;
        Wed, 16 Oct 2019 05:59:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571230756; cv=none;
        d=google.com; s=arc-20160816;
        b=EXmKZ/IiM2CMiDWdNf4upqrRRHk6bogIdIBCekU+ZBvv5OMffPquxuhCbVR/q5lex5
         pK+2kFGPqI7+JB10UHGZJy2fzw4ZMNjPSSGT1L9JLtCsOkQ7yV7oL7/+efBys4nBtPst
         2z+odE3vsi8uNXJ7mOATkJQn+WXBANQMwNmOKtMAeHMdXJfrPq5RF20qJ22c/r9H7iP8
         UPZ8CfyqF2lQ4N1YdWKLja5WUDjoZvkIl65QCLblc2Wg2KgqWTqa8qlbraBy28l9hB+t
         OiHN9RfvW1Uzeh7Iy3dFy3BvkiJnL6ebzRKYVqVHz3FNqXa8nkUR3RO8fqrezEWd2o7l
         cdrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=h8jWKRLHcYQHPvx6iEFsiy1s79ISKCPYqeIJX+eOlpg=;
        b=vT/l8v1zoj09vXKOlkEBidFicm4+Q+PHbD62L9LAY9q546FTreGLz5H1ah4IuPVSoH
         dppUZvTvZC/24v4yPIKY2MsgftlsZVRVZpF4E/gRZDld8I/a0yfBQ+DrGXTGjncWYErC
         WBYKf7Fyoo5uXAWWB3wWRpyT9vxvW6japuHSd7bzdyfxzCh8/DY54ZizBhhEHi+yuUE0
         VRIiAQHwyL8L0BO8kkUj1OO/D3uOXif8otecNYqeGwi5GjEwbOf6s7yZPiUslVCQvk/M
         GS9J9XsbRGfFC7/xfVaQkE4+QjdNmVVv0ue8ZFJQ+qcT05E+g4s7cOPvO09Cy9jaysEO
         rD0w==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="l+YK/3/0";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id c6si977532pgi.258.2019.10.16.05.59.16
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Oct 2019 05:59:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [209.136.236.94])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BC6812168B;
	Wed, 16 Oct 2019 12:59:15 +0000 (UTC)
Date: Wed, 16 Oct 2019 05:59:14 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: zzoru <zzoru007@gmail.com>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net,
	LKML <linux-kernel@vger.kernel.org>, dokyungs@uci.edu,
	syzkaller <syzkaller@googlegroups.com>
Subject: [usb-storage] Re: WARNING in __alloc_pages_nodemask
Message-ID: <20191016125914.GD26615@kroah.com>
References: <CALRZ7UuEBvMtL6Q3TOKjXdh9B4X5bcHUdbO7i20TmPShZHmKZg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CALRZ7UuEBvMtL6Q3TOKjXdh9B4X5bcHUdbO7i20TmPShZHmKZg@mail.gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="l+YK/3/0";       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Oct 16, 2019 at 02:21:59AM -0700, zzoru wrote:
> We found the following crash on Linux 5.4-rc1 (Not patched in current
> HEAD commit 3b1f00aceb7a67bf079a5a64aa5c6baf78a8f442)
> with our customized syzkaller.

<snip>

For this, and the other report, can you make up a patch to fix the issue
and submit it?

Also, 5.4-rc3 is out, you might want to update to a newer kernel as lots
and lots of USB-specific syzkaller-found issues have been fixed since
-rc1.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20191016125914.GD26615%40kroah.com.
