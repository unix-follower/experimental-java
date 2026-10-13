package class_loader_app;

import chemistry.ChemicalProps;
import chemistry.PhysicalProps;
import chemistry.StateOfMatter;

import javax.management.MBeanInfo;
import javax.net.ServerSocketFactory;
import javax.net.SocketFactory;
import javax.sql.DataSource;
import javax.xml.parsers.SAXParser;
import java.lang.module.ModuleDescriptor;
import java.sql.DriverManager;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Deque;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.RandomAccess;
import java.util.Scanner;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.Spliterator;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedDeque;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.ConcurrentSkipListSet;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.CyclicBarrier;
import java.util.concurrent.DelayQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.ForkJoinTask;
import java.util.concurrent.ForkJoinWorkerThread;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.LinkedTransferQueue;
import java.util.concurrent.Phaser;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RecursiveAction;
import java.util.concurrent.RecursiveTask;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReadWriteLock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.StampedLock;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.function.UnaryOperator;
import java.util.logging.Logger;

public class ClassLoaderDemo {
    private static final byte ARG2_INDEX = 1;

    private static void printClassLoaders() {
        System.out.println("Platform Classloader:" + ClassLoader.getPlatformClassLoader());
        System.out.println("System Classloader:" + ClassLoader.getSystemClassLoader());

        System.out.println("Classloader of Integer:" + Integer.class.getClassLoader());
        System.out.println("Classloader of Long:" + Long.class.getClassLoader());
        System.out.println("Classloader of Float:" + Float.class.getClassLoader());
        System.out.println("Classloader of Double:" + Double.class.getClassLoader());
        System.out.println("Classloader of String:" + String.class.getClassLoader());
        System.out.println("Classloader of Boolean:" + Boolean.class.getClassLoader());

        System.out.println("Classloader of Iterator:" + Iterator.class.getClassLoader());
        System.out.println("Classloader of Spliterator:" + Spliterator.class.getClassLoader());
        System.out.println("Classloader of RandomAccess:" + RandomAccess.class.getClassLoader());
        System.out.println("Classloader of Comparator:" + Comparator.class.getClassLoader());
        System.out.println("Classloader of Collection:" + Collection.class.getClassLoader());

        System.out.println("Classloader of List:" + List.class.getClassLoader());
        System.out.println("Classloader of ListIterator:" + ListIterator.class.getClassLoader());
        System.out.println("Classloader of ArrayList:" + ArrayList.class.getClassLoader());
        System.out.println("Classloader of LinkedList:" + LinkedList.class.getClassLoader());
        System.out.println("Classloader of CopyOnWriteArrayList:" + CopyOnWriteArrayList.class.getClassLoader());

        System.out.println("Classloader of Queue:" + Queue.class.getClassLoader());
        System.out.println("Classloader of Deque:" + Deque.class.getClassLoader());
        System.out.println("Classloader of ArrayDeque:" + ArrayDeque.class.getClassLoader());
        System.out.println("Classloader of PriorityQueue:" + PriorityQueue.class.getClassLoader());
        System.out.println("Classloader of ConcurrentLinkedQueue:" + ConcurrentLinkedQueue.class.getClassLoader());
        System.out.println("Classloader of ConcurrentLinkedDeque:" + ConcurrentLinkedDeque.class.getClassLoader());
        System.out.println("Classloader of DelayQueue:" + DelayQueue.class.getClassLoader());
        System.out.println("Classloader of LinkedBlockingQueue:" + LinkedBlockingQueue.class.getClassLoader());
        System.out.println("Classloader of LinkedBlockingDeque:" + LinkedBlockingDeque.class.getClassLoader());
        System.out.println("Classloader of LinkedTransferQueue:" + LinkedTransferQueue.class.getClassLoader());
        System.out.println("Classloader of PriorityBlockingQueue:" + PriorityBlockingQueue.class.getClassLoader());

        System.out.println("Classloader of Set:" + Set.class.getClassLoader());
        System.out.println("Classloader of SortedSet:" + SortedSet.class.getClassLoader());
        System.out.println("Classloader of NavigableSet:" + NavigableSet.class.getClassLoader());
        System.out.println("Classloader of EnumSet:" + EnumSet.class.getClassLoader());
        System.out.println("Classloader of HashSet:" + HashSet.class.getClassLoader());
        System.out.println("Classloader of LinkedHashSet:" + LinkedHashSet.class.getClassLoader());
        System.out.println("Classloader of TreeSet:" + TreeSet.class.getClassLoader());
        System.out.println("Classloader of ConcurrentSkipListSet:" + ConcurrentSkipListSet.class.getClassLoader());
        System.out.println("Classloader of CopyOnWriteArraySet:" + CopyOnWriteArraySet.class.getClassLoader());

        System.out.println("Classloader of Map:" + Map.class.getClassLoader());
        System.out.println("Classloader of SortedMap:" + SortedMap.class.getClassLoader());
        System.out.println("Classloader of NavigableMap:" + NavigableMap.class.getClassLoader());
        System.out.println("Classloader of EnumMap:" + EnumMap.class.getClassLoader());
        System.out.println("Classloader of HashMap:" + HashMap.class.getClassLoader());
        System.out.println("Classloader of LinkedHashMap:" + LinkedHashMap.class.getClassLoader());
        System.out.println("Classloader of IdentityHashMap:" + IdentityHashMap.class.getClassLoader());
        System.out.println("Classloader of TreeMap:" + TreeMap.class.getClassLoader());
        System.out.println("Classloader of ConcurrentMap:" + ConcurrentMap.class.getClassLoader());
        System.out.println("Classloader of ConcurrentHashMap:" + ConcurrentHashMap.class.getClassLoader());
        System.out.println("Classloader of ConcurrentNavigableMap:" + ConcurrentNavigableMap.class.getClassLoader());
        System.out.println("Classloader of ConcurrentSkipListMap:" + ConcurrentSkipListMap.class.getClassLoader());

        System.out.println("Classloader of Function:" + Function.class.getClassLoader());
        System.out.println("Classloader of BiFunction:" + BiFunction.class.getClassLoader());
        System.out.println("Classloader of Consumer:" + Consumer.class.getClassLoader());
        System.out.println("Classloader of BiConsumer:" + BiConsumer.class.getClassLoader());
        System.out.println("Classloader of BinaryOperator:" + BinaryOperator.class.getClassLoader());
        System.out.println("Classloader of UnaryOperator:" + UnaryOperator.class.getClassLoader());
        System.out.println("Classloader of Predicate:" + Predicate.class.getClassLoader());
        System.out.println("Classloader of Supplier:" + Supplier.class.getClassLoader());

        System.out.println("Classloader of AtomicInteger:" + AtomicInteger.class.getClassLoader());
        System.out.println("Classloader of AtomicLong:" + AtomicLong.class.getClassLoader());
        System.out.println("Classloader of AtomicLongArray:" + AtomicLongArray.class.getClassLoader());
        System.out.println("Classloader of AtomicBoolean:" + AtomicBoolean.class.getClassLoader());

        System.out.println("Classloader of Lock:" + Lock.class.getClassLoader());
        System.out.println("Classloader of ReadWriteLock:" + ReadWriteLock.class.getClassLoader());
        System.out.println("Classloader of ReentrantLock:" + ReentrantLock.class.getClassLoader());
        System.out.println("Classloader of ReentrantReadWriteLock:" + ReentrantReadWriteLock.class.getClassLoader());
        System.out.println("Classloader of StampedLock:" + StampedLock.class.getClassLoader());
        System.out.println("Classloader of CountDownLatch:" + CountDownLatch.class.getClassLoader());
        System.out.println("Classloader of CyclicBarrier:" + CyclicBarrier.class.getClassLoader());
        System.out.println("Classloader of Executor:" + Executor.class.getClassLoader());
        System.out.println("Classloader of ExecutorService:" + ExecutorService.class.getClassLoader());
        System.out.println("Classloader of ForkJoinPool:" + ForkJoinPool.class.getClassLoader());
        System.out.println("Classloader of ForkJoinTask:" + ForkJoinTask.class.getClassLoader());
        System.out.println("Classloader of ForkJoinWorkerThread:" + ForkJoinWorkerThread.class.getClassLoader());
        System.out.println("Classloader of Future:" + Future.class.getClassLoader());
        System.out.println("Classloader of FutureTask:" + FutureTask.class.getClassLoader());
        System.out.println("Classloader of Phaser:" + Phaser.class.getClassLoader());
        System.out.println("Classloader of RecursiveAction:" + RecursiveAction.class.getClassLoader());
        System.out.println("Classloader of RecursiveTask:" + RecursiveTask.class.getClassLoader());
        System.out.println("Classloader of Semaphore:" + Semaphore.class.getClassLoader());
        System.out.println("Classloader of ThreadLocal:" + ThreadLocal.class.getClassLoader());

        System.out.println("Classloader of SocketFactory:" + SocketFactory.class.getClassLoader());
        System.out.println("Classloader of ServerSocketFactory:" + ServerSocketFactory.class.getClassLoader());
        System.out.println("Classloader of Logger:" + Logger.class.getClassLoader());
        System.out.println("Classloader of MBeanInfo:" + MBeanInfo.class.getClassLoader());
        System.out.println("Classloader of DriverManager:" + DriverManager.class.getClassLoader());
        System.out.println("Classloader of DataSource:" + DataSource.class.getClassLoader());
        System.out.println("Classloader of SAXParser:" + SAXParser.class.getClassLoader());

        System.out.println("Classloader of this class:" + ClassLoaderDemo.class.getClassLoader());
        System.out.println("Classloader of Thread.currentThread().getContextClassLoader():"
                + Thread.currentThread().getContextClassLoader());
    }

    private static void printParents() {
        System.out.println("Parent classloader of this class:" + ClassLoaderDemo.class.getClassLoader().getParent());
        System.out.println("Parent classloader of DriverManager:" + DriverManager.class.getClassLoader().getParent());
        System.out.println("Parent classloader of DataSource:" + DataSource.class.getClassLoader().getParent());
    }

    static class Loader extends ClassLoader {
        @Override
        protected Class<?> findClass(String name) throws ClassNotFoundException {
            System.out.println("Trying to find the class: " + name);
            return super.findClass(name);
        }
    }

    private static void loadClass(String name) {
        Objects.requireNonNull(name, "name is null");

        final ClassLoader loader = new Loader();
        try {
            Class<?> clazz = loader.loadClass(name);
            System.out.println("Name: " + clazz.getName());
            System.out.println("TypeName: " + clazz.getTypeName());
            System.out.println("PackageName: " + clazz.getPackageName());
            System.out.println("SimpleName: " + clazz.getSimpleName());
            System.out.println("CanonicalName: " + clazz.getCanonicalName());

            final ModuleDescriptor descriptor = clazz.getModule().getDescriptor();
            if (descriptor == null) {
                return;
            }
            System.out.println("name: " + descriptor.name());
            System.out.println("rawVersion: " + descriptor.rawVersion());
            System.out.println("accessFlags: " + descriptor.accessFlags());
            System.out.println("requires: " + descriptor.requires());
            System.out.println("opens: " + descriptor.opens());
            System.out.println("exports: " + descriptor.exports());
            System.out.println("provides: " + descriptor.provides());
            System.out.println("uses: " + descriptor.uses());
            System.out.println("isAutomatic: " + descriptor.isAutomatic());
            System.out.println("isOpen: " + descriptor.isOpen());
            System.out.println("modifiers: " + descriptor.modifiers());
            System.out.println("mainClass: " + descriptor.mainClass());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    private static void executeScenarioWithChemistryModule() {
        final var physicalProps = new PhysicalProps(0, 100, StateOfMatter.LIQUID, 1, 0, 0);
        new chemistry.ChemicalCompound("H2O", new ChemicalProps(), physicalProps);
        System.out.println("The chemistry.api classes are available");
    }

    static void main(String[] args) {
        final String arg = args.length > 0 ? args[0] : "";

        switch (arg) {
            case "--parents" -> printParents();
            case "--load" -> loadClass(args[ARG2_INDEX]);
            case "-n" -> {
                final Map<Integer, Runnable> scenarioMap = new HashMap<>();
                scenarioMap.put(1, ClassLoaderDemo::executeScenarioWithChemistryModule);
                if (scenarioMap.containsKey(Integer.valueOf(args[ARG2_INDEX]))) {
                    scenarioMap.get(Integer.parseInt(args[ARG2_INDEX])).run();
                } else {
                    System.err.println("The scenario is not found: " + args[ARG2_INDEX]);
                }
            }
            default -> printClassLoaders();
        }

        System.out.println("Press ENTER to continue...");
        final Scanner scanner = new Scanner(System.in);
        scanner.nextLine();
    }
}
