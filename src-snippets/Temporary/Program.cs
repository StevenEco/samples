﻿using CodeSnippets;
using CodeSnippets.BCL;
using System;
using CSTree;
using CSTree.BCLExtensions;
using CodeSnippets.Security;

namespace Temporary
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                CryptographySample.MockUserLogin();
            }
            catch (Exception ex)
            {
                // 
                Console.WriteLine(ex.ToString());
            }
        }
    }
}
